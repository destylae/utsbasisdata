#Jawaban UTS No.1
SELECT*FROM negara WHERE nama_negara= 'USA';

#Jawaban UTS No.2
CREATE TABLE products(
    product_id INT primary key,
    product_name VARCHAR(255),
    product_price bigint,
    product_category VARCHAR(255));

INSERT INTO products values ('101','Laptop','1200.00','Elektronik'),
                            ('201','Hp','1000.00','Elektronik'),
                            ('301','TV','5500.00','Elektronik'),
                            ('401','AC','3750.00','Elektronik'),
                            ('501','Radio','2400.00','Elektronik');
SELECT*FROM products;

#Jawaban UTS No.3
ALTER TABLE products
ADD column product_status VARCHAR(255);
UPDATE products SET product_status = case
    WHEN product_price <25000.00 THEN 'murah'
    ELSE 'mahal'
END;

#Jawaban UTS No.4
DELETE*FROM products WHERE product_status = 'mahal';

#Jawaban UTS No.5
SELECT product_name, 
       product_price, 
       product_category,
       products.product_id, 
       stock.product_id, 
       QUANTITY FROM products INNER JOIN stock on stock.product_id = products.product_id WHERE stock.QUANTITY >10