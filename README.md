# Gecko URL Shortener  🦎🔗
## Deployed Application

#### Deployed Application URL:
```sh
https://geckourlshortener.onrender.com
```

#### Visual Overview
![Alt text](/screenshot.png)


## Installation Guide

### Prerequisites
- Ruby 3.3.2
- Rails 7.1.3.4
- SQLite3 (for development)
- PostgreSQL (for production)
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

3. **Set up PostgreSQL:**
    Ensure you have PostgreSQL installed and running. You can download it from the [official website](https://www.postgresql.org/).

4. **Database migration:**
    ```sh
    rails db:create
    rails db:migrate
    ```

5. **Configure [IPStack API Key](https://ipstack.com/) Key:**
    Add your IPStack API key to the environment variables.:
    ```sh
    IPSTACK_API_KEY=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
    ```

6. **Start the Rails server:**
    ```sh
    rails s
    ```

## Dependencies and Other Relevant Information

- **Ruby**: Version 3.3.2
- **Rails**: Version 7.1.3.4
- **Database**: 
  - Development: SQLite3
  - Production: PostgreSQL
- **Geolocation**: IPStack (requires API key)

### Scaffolding Tools
- Rails generators were used to scaffold the initial application structure. Then, the generated code was modified to suit the requirements of the application.




**Note:** The web application is deployed on Render using the free basic plan. The free instance on Render will spin down with inactivity, so it may take a few seconds to load the application.
