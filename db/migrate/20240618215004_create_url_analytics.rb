class CreateUrlAnalytics < ActiveRecord::Migration[7.1]
  def change
    create_table :url_analytics do |t|
      t.datetime :timestamp
      t.string :hashed_code
      t.string :geolocation

      t.timestamps
    end
  end
end
