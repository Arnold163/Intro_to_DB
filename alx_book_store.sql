-- Creating a library database
CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Authors(
    Author_id INT PRIMARY KEY AUTO_INCREMENT,
    Author_name VARCHAR(215) NOT NULL   
);

CREATE TABLE Books(
    Book_id INT PRIMARY KEY AUTO_INCREMENT,
    Title VARCHAR(130) NOT NULL,
    Author_id INT NOT NULL,
    Price Double NOT NULL,
    Publication_date DATE,
    FOREIGN KEY (Author_id) REFERENCES Authors(Author_id)
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT
);

CREATE TABLE Orders(
    Order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Order_details(
    orderdetailid INT PRIMARY KEY AUTO_INCREMENT,
    Order_id INT,
    Book_id INT,
    Quantity DOUBLE NOT NULL,
    FOREIGN KEY (Order_id) REFERENCES Orders(Order_id),
    FOREIGN KEY (Book_id) REFERENCES Books(Book_id)
);