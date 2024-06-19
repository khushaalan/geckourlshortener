class UrlsController < ApplicationController
    def index
      @urls = Url.all.order(created_at: :desc)
    end
  
    def create
      original_url = params[:url]
      hashed_code = generate_hashed_code(original_url)
  
      url = Url.new(original_url: original_url, hashed_code: hashed_code)
      if url.save
        session[:short_url] = url_for(controller: 'urls', action: 'redirect', hashed_code: url.hashed_code, only_path: false)
        redirect_to root_path
      else
        render :index
      end
    end
  
    def show
      @url = Url.find_by(hashed_code: params[:id])
      @analytics = UrlAnalytics.where(hashed_code: @url.hashed_code)
    end
    
  
    def redirect
        logger.info "Redirect action called for #{params[:hashed_code]}"
        @url = Url.find_by(hashed_code: params[:hashed_code])
        logger.info "URL found: #{@url.original_url}"
        if @url
          record_analytics(@url.hashed_code)
          redirect_url = @url.original_url
          redirect_url = "http://#{redirect_url}" unless redirect_url.start_with?("http://", "https://")
          redirect_to redirect_url, allow_other_host: true
        else
          redirect_to root_path
        end
      end
  
    private
  
    def generate_hashed_code(url)
      salt = Time.now.to_s + rand(1000).to_s
      Digest::SHA256.hexdigest(url + salt)[0..9]
    end
  
    def record_analytics(hashed_code)
      ip = request.remote_ip
      geo_info = get_geolocation(ip)
      UrlAnalytics.create(
        timestamp: Time.now,
        hashed_code: hashed_code,
        geolocation: geo_info
      )
    end
  
    require 'http'
    
    def get_geolocation(ip)
    api_key = ENV['IPSTACK_API_KEY']
    # ip = ENV['DEV_IP']
    url = "http://api.ipstack.com/#{ip}?access_key=#{api_key}"
    response = HTTP.get(url)
    logger.info "Response: #{response}"
    if response.status.success?
        data = response.parse
        return "#{data['city']}, #{data['zip']} #{data['country_name']}"
      else
        raise StandardError, "Error fetching geolocation: #{response.status}"
      end
    end
    end
  
