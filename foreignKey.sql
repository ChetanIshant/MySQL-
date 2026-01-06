-- this topic is little bit confusing, here I tried my best to deliver it in a way that it is very easy to understand:
-- defination : A foreign key is a column that creates a link between two tables. It ensures that the value in one table must match a value in another table.
-- imp: This is used to maintain data integrity between related data

-- created a table name addresses with foreign key
CREATE TABLE addresses (
id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES default_table(id) --foreign key created
);
-- user_id is a foreign key
-- It references the id column in the users table

-- dropping a foreign key
ALTER TABLE addresses
DROP FOREIGN KEY fk_user;

--Adding a Foreign Key Later (Using ALTER)
ALTER TABLE addresses
ADD CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id);


-- #very important:
-- when the data is deleted in the main table like default_table then the address stored in the table addresses which points to default_table is to be deleted by default
-- if the user doesn't exist then there is no use of his/her address in the addresses table, so this practice is used like this:

-- Adding ON DELETE Action
-- By default, if you delete a user that has related addresses, MySQL will throw an error. You can control this behavior with ON DELETE
-- If you want addresses to be automatically deleted when the user is deleted:
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
-- by this , if you delete the user from default_table his/her address will automatically be deleted from addresses table


-- SUMMARY:
/*
Foreign keys connect tables and enforce valid references
You can create them inline or with ALTER TABLE
You can drop them by name
Use ON DELETE to control what happens when the parent row is deleted
*/

-- Chetan Urf Ishant
