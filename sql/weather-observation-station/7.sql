select distinct city from station where substring(city, len(city), 1) like '[aeiou]';
