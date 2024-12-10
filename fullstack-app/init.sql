-- Create theaters table
CREATE TABLE theaters (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    location TEXT NOT NULL
);

-- Create screens table
CREATE TABLE screens (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    theater_id INTEGER,
    screen_type TEXT NOT NULL,
    total_seats INTEGER NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (theater_id) REFERENCES theaters(id)
);

-- Create seats table
CREATE TABLE seats (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_id INTEGER,
    seat_number TEXT NOT NULL,
    is_booked BOOLEAN DEFAULT 0,
    FOREIGN KEY (screen_id) REFERENCES screens(id)
);

-- Create food_items table
CREATE TABLE food_items (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    price DECIMAL(10,2) NOT NULL
);

-- Create bookings table
CREATE TABLE bookings (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_id INTEGER,
    seat_id INTEGER,
    customer_name TEXT NOT NULL,
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (screen_id) REFERENCES screens(id),
    FOREIGN KEY (seat_id) REFERENCES seats(id)
);

-- Create food_orders table
CREATE TABLE food_orders (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    booking_id INTEGER,
    food_item_id INTEGER,
    quantity INTEGER NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES bookings(id),
    FOREIGN KEY (food_item_id) REFERENCES food_items(id)
);

-- Insert initial data
INSERT INTO theaters (name, location) VALUES
('PVR Cinemas', 'Delhi'),
('PVR Cinemas', 'Mumbai');

-- Insert screens for each theater
INSERT INTO screens (theater_id, screen_type, total_seats, price) VALUES
(1, 'Gold', 2, 400),
(1, 'Max', 5, 300),
(1, 'General', 10, 200),
(2, 'Gold', 2, 400),
(2, 'Max', 5, 300),
(2, 'General', 10, 200);

-- Insert food items
INSERT INTO food_items (name, price) VALUES
('Popcorn', 150),
('Sandwich', 100);

-- Create waiting_list table
CREATE TABLE waiting_list (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    screen_id INTEGER,
    customer_name TEXT NOT NULL,
    booking_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    food_orders TEXT,  -- JSON string of food orders
    status TEXT DEFAULT 'waiting',  -- 'waiting', 'converted', 'cancelled'
    FOREIGN KEY (screen_id) REFERENCES screens(id)
);

-- Add waiting_list_position to bookings table
ALTER TABLE bookings ADD COLUMN is_waiting_list BOOLEAN DEFAULT 0;
ALTER TABLE bookings ADD COLUMN waiting_list_position INTEGER;

-- Insert seats for each screen
-- This would be done through a separate initialization scriptpm