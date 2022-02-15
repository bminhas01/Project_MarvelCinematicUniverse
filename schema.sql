-- Create mcu_cast table with cast name and DOB
CREATE TABLE mcu_cast(
	cast_id SERIAL PRIMARY KEY,
	cast_Name VARCHAR(100) NOT NULL,
	cast_DOB DATE
);

-- Create mcu_characters table
CREATE TABLE mcu_characters(
	character_Name VARCHAR(100) NOT NULL,
	actor_name VARCHAR(100) NOT NULL
);

-- Create mcu_movies table
CREATE TABLE mcu_movies(
	id SERIAL PRIMARY KEY,
	title VARCHAR(1000) NOT NULL,
	mcu_phase VARCHAR(100) NOT NULL,
	genre VARCHAR(1000) NOT NULL,
	release_Date DATE,
	director VARCHAR(100) NOT NULL,
	screenWriter VARCHAR(100),
	producer VARCHAR(100),
	cast_List TEXT NOT NULL,
	plot TEXT,
	languages VARCHAR(100),
	release_Status VARCHAR(100),
	rating VARCHAR(100),
	review_Rating DECIMAL,
	run_Time INT,
	budget BIGINT,
	box_Office BIGINT	
);

-- Review data in mcu_cast table
SELECT *
FROM mcu_cast;

-- Review data in mcu_characters table
SELECT *
FROM mcu_characters;

-- Review data in mcu_movies table
SELECT *
FROM mcu_movies;

-- -- ANALYSIS
-- 1. Profit by Year
SELECT title, date_part('Year', release_date) as "Year", box_office, budget, (box_office - budget) as "Profit"
FROM mcu_movies
WHERE box_office IS NOT NULL;

-- 2. Profit by Phase
SELECT title, date_part('Year',)
