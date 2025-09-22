-- Sample Data for E-commerce Database (PostgreSQL compatible)

-- Insert data into Categories
INSERT INTO Categories (CategoryName, Description) VALUES
('Electronics', 'Gadgets, devices, and accessories'),
('Books', 'Fiction, non-fiction, and educational books'),
('Clothing', 'Apparel for men, women, and children'),
('Home & Kitchen', 'Appliances, decor, and kitchenware'),
('Sports & Outdoors', 'Equipment for sports and outdoor activities');

-- Insert data into Customers (50+ records)
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, Address, City, Country) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', '9876543210', '123 MG Road', 'Mumbai', 'India'),
('Diya', 'Patel', 'diya.patel@example.com', '9876543211', '456 Park Street', 'Delhi', 'India'),
('Rohan', 'Singh', 'rohan.singh@example.com', '9876543212', '789 Lake View', 'Bangalore', 'India'),
('Priya', 'Kumar', 'priya.kumar@example.com', '9876543213', '101 Ocean Drive', 'Chennai', 'India'),
('Arjun', 'Mehra', 'arjun.mehra@example.com', '9876543214', '212 Hill Road', 'Pune', 'India'),
('Saanvi', 'Jain', 'saanvi.jain@example.com', '9876543215', '333 River Front', 'Ahmedabad', 'India'),
('Advait', 'Verma', 'advait.verma@example.com', '9876543216', '444 High Street', 'Kolkata', 'India'),
('Anika', 'Gupta', 'anika.gupta@example.com', '9876543217', '555 Central Avenue', 'Hyderabad', 'India'),
('Vihaan', 'Reddy', 'vihaan.reddy@example.com', '9876543218', '666 Green Valley', 'Jaipur', 'India'),
('Zara', 'Khan', 'zara.khan@example.com', '9876543219', '777 Sunset Blvd', 'Lucknow', 'India'),
('Kabir', 'Malhotra', 'kabir.malhotra@example.com', '9876543220', '888 Main Bazaar', 'Surat', 'India'),
('Myra', 'Chopra', 'myra.chopra@example.com', '9876543221', '999 North Lane', 'Kanpur', 'India'),
('Ishaan', 'Iyer', 'ishaan.iyer@example.com', '9876543222', '111 South Extension', 'Nagpur', 'India'),
('Kiara', 'Nair', 'kiara.nair@example.com', '9876543223', '222 West End', 'Indore', 'India'),
('Aryan', 'Das', 'aryan.das@example.com', '9876543224', '321 East Bay', 'Thane', 'India'),
('Avani', 'Mishra', 'avani.mishra@example.com', '9876543225', '432 New Link Road', 'Bhopal', 'India'),
('Reyansh', 'Thakur', 'reyansh.thakur@example.com', '9876543226', '543 Old Port Road', 'Visakhapatnam', 'India'),
('Aisha', 'Agarwal', 'aisha.agarwal@example.com', '9876543227', '654 Royal Circle', 'Patna', 'India'),
('Sai', 'Rao', 'sai.rao@example.com', '9876543228', '765 Palace Grounds', 'Ludhiana', 'India'),
('Ananya', 'Yadav', 'ananya.yadav@example.com', '9876543229', '876 Station Road', 'Agra', 'India'),
('Liam', 'Jones', 'liam.jones@example.com', '9876543230', '1 Pine St', 'Mumbai', 'India'),
('Olivia', 'Garcia', 'olivia.garcia@example.com', '9876543231', '2 Oak Ave', 'Delhi', 'India'),
('Noah', 'Miller', 'noah.miller@example.com', '9876543232', '3 Maple Dr', 'Bangalore', 'India'),
('Emma', 'Davis', 'emma.davis@example.com', '9876543233', '4 Birch Ln', 'Chennai', 'India'),
('Oliver', 'Rodriguez', 'oliver.rodriguez@example.com', '9876543234', '5 Cedar Ct', 'Pune', 'India'),
('Ava', 'Martinez', 'ava.martinez@example.com', '9876543235', '6 Elm Pl', 'Ahmedabad', 'India'),
('Elijah', 'Hernandez', 'elijah.hernandez@example.com', '9876543236', '7 Spruce Way', 'Kolkata', 'India'),
('Charlotte', 'Lopez', 'charlotte.lopez@example.com', '9876543237', '8 Willow Rd', 'Hyderabad', 'India'),
('William', 'Gonzalez', 'william.gonzalez@example.com', '9876543238', '9 Aspen St', 'Jaipur', 'India'),
('Sophia', 'Wilson', 'sophia.wilson@example.com', '9876543239', '10 Fir Ave', 'Lucknow', 'India'),
('James', 'Anderson', 'james.anderson@example.com', '9876543240', '11 Palm Dr', 'Surat', 'India'),
('Amelia', 'Thomas', 'amelia.thomas@example.com', '9876543241', '12 Redwood Ln', 'Kanpur', 'India'),
('Benjamin', 'Taylor', 'benjamin.taylor@example.com', '9876543242', '13 Cypress Ct', 'Nagpur', 'India'),
('Isabella', 'Moore', 'isabella.moore@example.com', '9876543243', '14 Poplar Pl', 'Indore', 'India'),
('Lucas', 'Jackson', 'lucas.jackson@example.com', '9876543244', '15 Sycamore Way', 'Thane', 'India'),
('Mia', 'Martin', 'mia.martin@example.com', '9876543245', '16 Juniper Rd', 'Bhopal', 'India'),
('Henry', 'Lee', 'henry.lee@example.com', '9876543246', '17 Sequoia St', 'Visakhapatnam', 'India'),
('Evelyn', 'Perez', 'evelyn.perez@example.com', '9876543247', '18 Magnolia Ave', 'Patna', 'India'),
('Alexander', 'Thompson', 'alexander.thompson@example.com', '9876543248', '19 Dogwood Dr', 'Ludhiana', 'India'),
('Harper', 'White', 'harper.white@example.com', '9876543249', '20 Holly Ln', 'Agra', 'India'),
('Yusuf', 'Ali', 'yusuf.ali@example.com', '9876543250', '21 Palm Grove', 'Mumbai', 'India'),
('Fatima', 'Begum', 'fatima.begum@example.com', '9876543251', '22 Banyan Tree', 'Delhi', 'India'),
('Imran', 'Hassan', 'imran.hassan@example.com', '9876543252', '23 Lotus Garden', 'Bangalore', 'India'),
('Ayesha', 'Sultana', 'ayesha.sultana@example.com', '9876543253', '24 Rose Villa', 'Chennai', 'India'),
('Rizwan', 'Ahmed', 'rizwan.ahmed@example.com', '9876543254', '25 Jasmine House', 'Pune', 'India'),
('Samira', 'Choudhury', 'samira.choudhury@example.com', '9876543255', '26 Orchid Apartments', 'Ahmedabad', 'India'),
('Tariq', 'Hussain', 'tariq.hussain@example.com', '9876543256', '27 Marigold Lane', 'Kolkata', 'India'),
('Nadia', 'Parveen', 'nadia.parveen@example.com', '9876543257', '28 Sunflower Street', 'Hyderabad', 'India'),
('Zayn', 'Rahman', 'zayn.rahman@example.com', '9876543258', '29 Tulip Court', 'Jaipur', 'India'),
('Alina', 'Shaikh', 'alina.shaikh@example.com', '9876543259', '30 Dahlia Drive', 'Lucknow', 'India');

-- Insert data into Products (50 records)
INSERT INTO Products (ProductName, Description, Price, StockQuantity, CategoryID) VALUES
-- Electronics (CategoryID: 1)
('Smartphone X', 'Latest model with AI camera', 60000.00, 150, 1),
('Laptop Pro', 'High-performance laptop for professionals', 120000.00, 75, 1),
('Wireless Earbuds', 'Noise-cancelling with long battery life', 8000.00, 300, 1),
('Smartwatch Series 5', 'Tracks fitness and notifications', 25000.00, 200, 1),
('4K Ultra HD TV', '55-inch smart TV with vibrant colors', 55000.00, 50, 1),
('Bluetooth Speaker', 'Portable and waterproof', 4500.00, 400, 1),
('Gaming Console', 'Next-gen gaming experience', 45000.00, 100, 1),
('Digital Camera', '24MP DSLR for stunning photos', 48000.00, 80, 1),
('Power Bank', '20000mAh fast charging', 2000.00, 500, 1),
('Tablet 10-inch', 'Lightweight tablet for work and play', 35000.00, 120, 1),
-- Books (CategoryID: 2)
('The Alchemist', 'A classic novel by Paulo Coelho', 350.00, 500, 2),
('Sapiens: A Brief History of Humankind', 'By Yuval Noah Harari', 550.00, 300, 2),
('Atomic Habits', 'By James Clear', 450.00, 600, 2),
('Ikigai', 'The Japanese secret to a long and happy life', 400.00, 450, 2),
('The Psychology of Money', 'By Morgan Housel', 480.00, 400, 2),
('Deep Work', 'By Cal Newport', 420.00, 350, 2),
('To Kill a Mockingbird', 'By Harper Lee', 380.00, 250, 2),
('1984', 'By George Orwell', 300.00, 300, 2),
('The Great Gatsby', 'By F. Scott Fitzgerald', 280.00, 200, 2),
('The Lord of the Rings', 'By J.R.R. Tolkien', 1200.00, 150, 2),
-- Clothing (CategoryID: 3)
('Men''s Cotton T-Shirt', 'Comfortable fit, 100% cotton', 500.00, 800, 3),
('Women''s Denim Jeans', 'Slim fit, stretchable fabric', 1800.00, 400, 3),
('Unisex Hoodie', 'Warm fleece hoodie', 1500.00, 500, 3),
('Running Shoes', 'Lightweight and durable', 3500.00, 300, 3),
('Leather Jacket', 'Classic biker style', 4500.00, 100, 3),
('Formal Shirt', 'Slim fit, for office wear', 1200.00, 450, 3),
('Sports Shorts', 'Quick-dry fabric', 800.00, 600, 3),
('Summer Dress', 'Floral print cotton dress', 1600.00, 250, 3),
('Winter Scarf', 'Woolen scarf for cold weather', 600.00, 700, 3),
('Leather Belt', 'Genuine leather with steel buckle', 900.00, 550, 3),
-- Home & Kitchen (CategoryID: 4)
('Non-stick Pan', '10-inch ceramic coated pan', 1200.00, 300, 4),
('Coffee Maker', 'Drip coffee machine, 12-cup capacity', 3000.00, 150, 4),
('Blender', '500W motor for smoothies and shakes', 2500.00, 200, 4),
('Microwave Oven', '20L capacity with grill function', 6000.00, 100, 4),
('Air Purifier', 'HEPA filter for clean air', 9000.00, 80, 4),
('Electric Kettle', '1.5L stainless steel kettle', 1100.00, 400, 4),
('Dinner Set', '32-piece ceramic dinner set', 4500.00, 120, 4),
('Bed Sheets Set', 'King size cotton bed sheets', 2000.00, 350, 4),
('Wall Clock', 'Modern design, 12-inch diameter', 800.00, 500, 4),
('Cutlery Set', '24-piece stainless steel set', 1500.00, 250, 4),
-- Sports & Outdoors (CategoryID: 5)
('Cricket Bat', 'English Willow, short handle', 4000.00, 100, 5),
('Football', 'Size 5, for professional matches', 1500.00, 300, 5),
('Yoga Mat', '6mm thick, non-slip surface', 900.00, 600, 5),
('Dumbbell Set', '20kg adjustable dumbbell set', 3500.00, 150, 5),
('Camping Tent', '2-person waterproof tent', 2800.00, 200, 5),
('Hiking Backpack', '50L capacity, durable and lightweight', 3200.00, 180, 5),
('Skateboard', 'Maple wood deck with high-grip tape', 2500.00, 250, 5),
('Badminton Racket', 'Graphite frame, lightweight', 1800.00, 400, 5),
('Cycling Helmet', 'Ventilated and adjustable', 1300.00, 350, 5),
('Jump Rope', 'Adjustable speed rope for cardio', 400.00, 800, 5);

-- Insert data into Orders (50+ records)
-- Note: In a real application, TotalAmount would be calculated from OrderItems.
-- These are placeholder values for demonstration.
INSERT INTO Orders (CustomerID, OrderDate, Status, TotalAmount) VALUES
(1, '2025-08-01 10:30:00', 'Shipped', 68000.00),
(2, '2025-08-02 11:00:00', 'Delivered', 2350.00),
(3, '2025-08-03 14:00:00', 'Pending', 1500.00),
(4, '2025-08-04 16:45:00', 'Shipped', 4500.00),
(5, '2025-08-05 09:15:00', 'Processing', 35000.00),
(1, '2025-08-06 12:00:00', 'Delivered', 450.00),
(6, '2025-08-07 18:20:00', 'Shipped', 1200.00),
(7, '2025-08-08 20:00:00', 'Pending', 900.00),
(8, '2025-08-09 13:05:00', 'Delivered', 55000.00),
(9, '2025-08-10 10:00:00', 'Cancelled', 4000.00),
(10, '2025-08-11 11:30:00', 'Shipped', 1500.00),
(11, '2025-08-12 15:00:00', 'Delivered', 2500.00),
(12, '2025-08-13 17:00:00', 'Shipped', 350.00),
(13, '2025-08-14 09:00:00', 'Pending', 48000.00),
(14, '2025-08-15 19:45:00', 'Delivered', 900.00),
(15, '2025-08-16 21:00:00', 'Shipped', 1800.00),
(16, '2025-08-17 14:30:00', 'Processing', 500.00),
(17, '2025-08-18 10:10:00', 'Delivered', 3500.00),
(18, '2025-08-19 12:45:00', 'Shipped', 4500.00),
(19, '2025-08-20 16:00:00', 'Delivered', 2000.00),
(20, '2025-08-21 18:00:00', 'Pending', 1200.00),
(21, '2025-08-22 09:30:00', 'Shipped', 550.00),
(22, '2025-08-23 11:00:00', 'Delivered', 2800.00),
(23, '2025-08-24 13:20:00', 'Processing', 4500.00),
(24, '2025-08-25 15:50:00', 'Delivered', 9000.00),
(25, '2025-08-26 17:00:00', 'Shipped', 400.00),
(26, '2025-08-27 19:00:00', 'Delivered', 120000.00),
(27, '2025-08-28 20:30:00', 'Pending', 1300.00),
(28, '2025-08-29 22:00:00', 'Shipped', 1800.00),
(29, '2025-08-30 08:45:00', 'Delivered', 600.00),
(30, '2025-08-31 10:00:00', 'Processing', 480.00),
(31, '2025-09-01 12:15:00', 'Shipped', 900.00),
(32, '2025-09-02 14:00:00', 'Delivered', 1500.00),
(33, '2025-09-03 16:30:00', 'Pending', 300.00),
(34, '2025-09-04 18:00:00', 'Delivered', 25000.00),
(35, '2025-09-05 20:00:00', 'Shipped', 1100.00),
(36, '2025-09-06 09:00:00', 'Delivered', 800.00),
(37, '2025-09-07 11:25:00', 'Processing', 4500.00),
(38, '2025-09-08 13:00:00', 'Shipped', 3200.00),
(39, '2025-09-09 15:45:00', 'Delivered', 900.00),
(40, '2025-09-10 17:30:00', 'Cancelled', 1200.00),
(41, '2025-09-11 19:00:00', 'Shipped', 4000.00),
(42, '2025-09-12 21:00:00', 'Delivered', 1500.00),
(43, '2025-09-13 08:30:00', 'Processing', 2500.00),
(44, '2025-09-14 10:00:00', 'Delivered', 1800.00),
(45, '2025-09-15 12:00:00', 'Shipped', 1300.00),
(46, '2025-09-16 14:00:00', 'Delivered', 4500.00),
(47, '2025-09-17 16:00:00', 'Pending', 900.00),
(48, '2025-09-18 18:00:00', 'Delivered', 2000.00),
(49, '2025-09-19 20:00:00', 'Shipped', 800.00),
(50, '2025-09-20 22:00:00', 'Delivered', 3500.00);

-- Insert data into OrderItems (many records)
INSERT INTO OrderItems (OrderID, ProductID, Quantity, Subtotal) VALUES
-- Order 1
(1, 1, 1, 60000.00),
(1, 3, 1, 8000.00),
-- Order 2
(2, 21, 1, 500.00),
(2, 22, 1, 1800.00),
(2, 50, 1, 50.00), -- Fictional item for total
-- Order 3
(3, 42, 1, 1500.00),
-- Order 4
(4, 25, 1, 4500.00),
-- Order 5
(5, 10, 1, 35000.00),
-- Order 6
(6, 13, 1, 450.00),
-- Order 7
(7, 20, 1, 1200.00),
-- Order 8
(8, 43, 1, 900.00),
-- Order 9
(9, 5, 1, 55000.00),
-- Order 10
(10, 41, 1, 4000.00),
-- Order 11
(11, 42, 1, 1500.00),
-- Order 12
(12, 33, 1, 2500.00),
-- Order 13
(13, 11, 1, 350.00),
-- Order 14
(14, 8, 1, 48000.00),
-- Order 15
(15, 30, 1, 900.00),
-- Order 16
(16, 22, 1, 1800.00),
(17, 21, 1, 500.00),
(18, 24, 1, 3500.00),
(19, 37, 1, 4500.00),
(20, 9, 1, 2000.00),
(21, 26, 1, 1200.00),
(22, 12, 1, 550.00),
(23, 45, 1, 2800.00),
(24, 25, 1, 4500.00),
(25, 35, 1, 9000.00),
(26, 50, 1, 400.00),
(27, 2, 1, 120000.00),
(28, 49, 1, 1300.00),
(29, 22, 1, 1800.00),
(30, 29, 1, 600.00);
