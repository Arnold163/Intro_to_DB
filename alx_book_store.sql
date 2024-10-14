-- Creating a library database
CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;
CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL   
);

CREATE TABLE Books(
    Book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price Double NOT NULL,
    publication_date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_details(
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    Book_id INT,
    Quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);