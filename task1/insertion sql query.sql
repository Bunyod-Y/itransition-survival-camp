-----------------------------------------------------------------------------------------------------------

(myenv) bunyodyokubov@Predator-Helios:~/PROJECTS/itransition$ sudo service postgresql start
(myenv) bunyodyokubov@Predator-Helios:~/PROJECTS/itransition$ sudo -u postgres createdb books_database
(myenv) bunyodyokubov@Predator-Helios:~/PROJECTS/itransition$ sudo -u postgres psql
psql (16.10 (Ubuntu 16.10-0ubuntu0.24.04.1))
Type "help" for help.
  -----------------------------------------------------------------------------------------------------------
postgres=# ALTER USER postgres WITH PASSWORD 'bunyod';
ALTER ROLE

CREATE TABLE books_raw (
    id NUMERIC(20,0) PRIMARY KEY,
    title TEXT,
    year INTEGER,
    price_eur NUMERIC(10,2)
);

-----------------------------------------------------------------------------------------------------------
SELECT * FROM books_raw LIMIT 5;
 count 
-------
  5003
(1 row)

          id          |               title               | year | price_eur 
----------------------+-----------------------------------+------+-----------
 10292064894005717421 | Look Homeward, Angel              | 2010 |     72.71
 13029911509625386835 | The Yellow Meads of Asphodel      | 2018 |     26.66
 12880574241579659568 | A Catskill Eagle                  | 2011 |      5.99
 13301315742612799364 | Der Richter und sein Henker       | 1995 |     62.50
 16372759776603821045 | After Many a Summer Dies the Swan | 2004 |     43.33
(5 rows)
