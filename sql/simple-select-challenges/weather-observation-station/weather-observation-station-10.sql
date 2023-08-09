select distinct city from station where substring(city, 1, 1) not like '[aeiou]' or substring(city, len(city), 1) not like '[aeiou]';
