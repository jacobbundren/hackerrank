select distinct city from station where substring(city, 1, 1) like '[aeiou]' and substring(city, len(city), 1) like '[aeiou]';
