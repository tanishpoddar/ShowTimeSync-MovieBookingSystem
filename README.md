# ShowTimeSync - Movie Booking System

## Overview
ShowTimeSync is a comprehensive movie booking system designed to help a movie theatre company manage ticket bookings across India. The system uses two technology stacks to cater to different requirements and environments.

## Technology Stacks
1. **Python with MySQL**
   - Backend application for handling core business logic and database operations.
   - Utilizes MySQL to store and manage data.

2. **Node.js with SQLite**
   - Frontend application for user interaction and additional features.
   - Utilizes SQLite for lightweight and efficient data storage.

## Problem Statement
We want to build an application which helps a movie theatre company in managing ticket booking across India.

### Features
1. **Theater Management**
   - The company has theatres across the country, with each theatre having multiple screens.
   - Types of screens:
     - **Gold (Price - Rs. 400 / per ticket)**: 2 seats per screen
     - **Max (Price - Rs. 300 / per ticket)**: 5 seats per screen
     - **General (Price - Rs. 200 / per ticket)**: 10 seats per screen

2. **Ticket Booking**
   - Users can book movie tickets for different types of screens.
   - Seat availability and pricing are managed dynamically.
   - When the seats are full, the tickets go to the waiting list and, if anyone cancels, the waiting list gets updated.

3. **Food & Beverage Booking**
   - Users can book food and beverages while booking movie tickets.
   - Available items:
     - **Popcorn**
     - **Sandwich**
   - Discounts:
     - **Gold ticket users**: 10% discount on food
     - **Max ticket users**: 5% discount on food

## Directory Structure
- **fullstack-app/**: Node.js application with SQLite database.
  - `app.js`: Main application file.
  - `cleanup-db.js`: Script to clean up the database.
  - `init-db.js`: Script to initialize the database.
  - `init.sql`: SQL script for database initialization.
  - `movie_booking.db`: SQLite database file.
  - `README.md`: Documentation for the Node.js application.
  - `public/`: Public assets for the web application.
    - `index.html`: Main HTML file.
    - `css/`: CSS files.
      - `styles.css`: Stylesheet for the web application.
    - `js/`: JavaScript files.
      - `main.js`: Main JavaScript file.

- **python-app/**: Python application with MySQL database.
  - `app.py`: Main application file.
  - `booking_system.py`: Module for handling booking logic.
  - `database.py`: Module for database operations.
  - `gui-app.py`: GUI application file.
  - `main.py`: Entry point for the application.
  - `README.md`: Documentation for the Python application.
  - `requirements.txt`: List of Python dependencies.

## Getting Started
Refer [Node.js & SQLite README.md](fullstack-app/README.md) for step-by-step instructions

Refer [PYTHON README.md](python-app/README.md) for step-by-step instructions.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
