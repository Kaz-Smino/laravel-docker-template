# Laravel Docker Template

This repository provides a Docker template for Laravel projects. It includes a Dockerfile and docker-compose.yml to easily set up a Laravel development environment.

## Features

- **Easy Setup**: Quickly build a development environment using Docker and Docker Compose.
- **PostgreSQL Database**: Configured to use PostgreSQL by default.
- **Customizable**: Easily modify settings to fit your project needs.

## Usage

1. **Clone the Repository**

   ```bash
   git clone <your-repository-url> my-laravel-project
   cd my-laravel-project
   ```

2. **Set Up Your Laravel Project**

   - Create a new Laravel project or copy an existing one into this directory.

3. **Configure Environment Variables**

   - Copy `.env.example` to `.env` and set the necessary environment variables.

   ```bash
   cp .env.example .env
   ```

4. **Start Docker Containers**

   ```bash
   docker-compose up --build
   ```

5. **Access in Browser**

   - Open your browser and go to `http://localhost:8000` to verify that the Laravel application is running.

## Customization

- **Database Settings**: Modify the database settings in `docker-compose.yml` to use a different database if needed.
- **Port Changes**: Adjust the host port numbers to avoid port conflicts as necessary.

## Notes

- This template is designed for development purposes. It is not suitable for production use.
- Adjust security settings and performance tuning according to your project requirements.

## License

This project is licensed under the MIT License.
