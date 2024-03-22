-- Create contacts table
CREATE TABLE contacts(
	contact_id INT PRIMARY KEY,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	email VARCHAR NOT NULL
);

-- Create category table
CREATE TABLE category(
	category_id VARCHAR(5) PRIMARY KEY,
	category VARCHAR(30) NOT NULL
);

-- Create subcategory table
CREATE TABLE subcategory(
	subcategory_id VARCHAR(10) PRIMARY KEY,
	subcategory VARCHAR(30) NOT NULL
);

-- Create campaign table
CREATE TABLE campaign(
	cf_id INT PRIMARY KEY,
	contact_id INT NOT NULL,
	company_name VARCHAR NOT NULL,
	description VARCHAR NOT NULL,
	goal FLOAT NOT NULL,
	pledged FLOAT NOT NULL,
	outcome VARCHAR NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(3) NOT NULL,
	currency VARCHAR(5) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(5) NOT NULL,
	subcategory_id VARCHAR(10) NOT NULL,
	FOREIGN KEY (contact_id) REFERENCES contacts (contact_id),
	FOREIGN KEY (category_id) REFERENCES category (category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory (subcategory_id)
);

Select * from contacts
Select * from category
Select * from subcategory
Select * from campaign