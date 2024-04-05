drop database if exists dvdrental;

CREATE DATABASE IF NOT EXISTS dvdrental
DEFAULT CHARACTER SET utf8mb4
DEFAULT COLLATE utf8mb4_0900_ai_ci;

use dvdrental;

drop table if exists customer, actor, category, film, film_actor, film_category, address, city, country, inventory, language, payment, rental, staff, store;

CREATE TABLE country (
    country_id INT AUTO_INCREMENT,
    country VARCHAR(50) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (country_id)
);

CREATE TABLE city (
    city_id INT AUTO_INCREMENT,
    city VARCHAR(50) NOT NULL,
    country_id INT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (city_id),
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE address (
    address_id INT AUTO_INCREMENT,
    address VARCHAR(50) NOT NULL,
    address2 VARCHAR(50),
    district VARCHAR(20) NOT NULL,
    city_id INT NOT NULL,
    postal_code VARCHAR(10),
    phone VARCHAR(20) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (address_id),
    FOREIGN KEY (city_id) REFERENCES city(city_id)

);

CREATE TABLE store (
    store_id INT AUTO_INCREMENT,
    manager_staff_id INT NOT NULL,
    address_id INT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (store_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    address_id INT NOT NULL,
    email VARCHAR(50),
    store_id INT NOT NULL,
    active TINYINT(1) DEFAULT 1 NOT NULL,
    username VARCHAR(16) NOT NULL,
    pass_word VARCHAR(40),
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    picture BLOB,
    PRIMARY KEY (staff_id),
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT,
    store_id INT NOT NULL,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    email VARCHAR(50),
    address_id INT NOT NULL,
    activebool TINYINT(1) DEFAULT 1 NOT NULL,
    create_date DATE NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    active INT,
    PRIMARY KEY (customer_id),
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id)
);

CREATE TABLE actor (
    actor_id INT AUTO_INCREMENT,
    first_name VARCHAR(45) NOT NULL,
    last_name VARCHAR(45) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (actor_id)
);

CREATE TABLE category (
    category_id INT AUTO_INCREMENT,
    name VARCHAR(25) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE language (
    language_id INT AUTO_INCREMENT,
    name CHAR(20) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (language_id)
);

CREATE TABLE film (
    film_id INT AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    release_year YEAR,
    language_id INT NOT NULL,
    rental_duration INT DEFAULT 3 NOT NULL,
    rental_rate DECIMAL(4,2) DEFAULT 4.99 NOT NULL,
    duration INT,
    replacement_cost DECIMAL(5,2) DEFAULT 19.99 NOT NULL,
    rating ENUM('G','PG','PG-13','R','NC-17') DEFAULT 'G',
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    special_features SET('Trailers','Commentaries','Deleted Scenes','Behind the Scenes'),
    full_text TEXT NOT NULL,
    PRIMARY KEY (film_id),
    FOREIGN KEY (language_id) REFERENCES language(language_id)
);

CREATE TABLE film_actor (
    actor_id INT NOT NULL,
    film_id INT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (actor_id) REFERENCES actor(actor_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id)
);

CREATE TABLE film_category (
    film_id INT NOT NULL,
    category_id INT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id)
);

CREATE TABLE inventory (
    inventory_id INT AUTO_INCREMENT,
    film_id INT NOT NULL,
    store_id INT NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (inventory_id),
    FOREIGN KEY (store_id) REFERENCES store(store_id),
    FOREIGN KEY (film_id) REFERENCES film(film_id)
);

CREATE TABLE rental (
    rental_id INT AUTO_INCREMENT,
    rental_date TIMESTAMP NOT NULL,
    inventory_id INT NOT NULL,
    customer_id INT NOT NULL,
    return_date TIMESTAMP,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
    PRIMARY KEY (rental_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (inventory_id) REFERENCES inventory(inventory_id)
);

CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    staff_id INT NOT NULL,
    rental_id INT NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    payment_date TIMESTAMP NOT NULL,
    PRIMARY KEY (payment_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (rental_id) REFERENCES rental(rental_id),
    FOREIGN KEY (staff_id) REFERENCES staff(staff_id)
);

