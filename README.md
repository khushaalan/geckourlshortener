# Gecko URL Shortener  🦎🔗
## Deployed Application

#### Deployed Application URL:
```sh
https://geckourlshortener.onrender.com
```

#### Visual Overview
![Alt text](/screenshot.png)

### Test Results:
Wrote a few tests to check the functionality of the application using RSpec. The tests can be run using the following command:
```sh
bundle exec rspec
```
![Alt text](/test-screenshot.png)


## Installation Guide

### Prerequisites
- Ruby 3.3.2
- Rails 7.1.3.4
- SQLite3
- IPStack API Key for geolocation

### Setup

1. **Clone the repository:**
    ```sh
    git clone https://github.com/khushaalan/geckourlshortener.git
    cd geckourlshortner
    ```

2. **Install dependencies:**
    ```sh
    bundle install
    ```

3. **Database migration:**
    ```sh
    rails db:create
    rails db:migrate
    ```

4. **Configure [IPStack API Key](https://ipstack.com/) Key:**
    Add your IPStack API key to the environment variables.:
    ```sh
    IPSTACK_API_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    ```

5. **Start the Rails server:**
    ```sh
    rails s
    ```

## Dependencies and Other Relevant Information

- **Ruby**: Version 3.3.2
- **Rails**: Version 7.1.3.4
- **Database**: 
  - SQLite3
- **Geolocation**: IPStack (requires API key)

### Scaffolding Tools
- Rails generators were used to scaffold the initial application structure. Then, the generated code was modified to suit the requirements of the application.




**Note:** The web application is deployed on Render using the free basic plan. The free instance on Render will spin down with inactivity, so it may take a few seconds to load the application.
