#########################################################################

CREATE TABLE books_raw (
    id NUMERIC(20,0) PRIMARY KEY,
    title TEXT,
    year INTEGER,
    price_eur NUMERIC(10,2) 
)

##########################################################################
  
COPY books_raw FROM 'D:\books_data.csv' CSV HEADER;

##########################################################################

SELECT * FROM books_raw;
