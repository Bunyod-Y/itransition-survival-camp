CREATE TABLE books_raw (
    id NUMERIC(20,0) PRIMARY KEY,
    title TEXT,
    year INTEGER,
    price_eur NUMERIC(10,2) 
)

COPY books_raw FROM 'D:\books_data.csv' CSV HEADER;

SELECT * FROM books_raw;

SELECT year, COUNT(*) as num_of_books_in_this_year
FROM books_raw
GROUP BY year
ORDER BY year;

SELECT year, AVG(price_eur) as average_price
FROM books_raw
GROUP BY year
ORDER BY year;
