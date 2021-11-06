SELECT * FROM owners LEFT JOIN vehicles ON owners.id = vehicles.owner_id;

SELECT first_name, last_name, COUNT(vehicles) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.first_name, owners.last_name ORDER BY first_name, last_name ASC;

SELECT first_name, last_name, COUNT(vehicles), ROUND(AVG(price)) FROM owners JOIN vehicles ON owners.id = vehicles.owner_id GROUP BY owners.first_name, owners.last_name HAVING COUNT(vehicles) > 1 AND AVG(price) > 10000 ORDER BY first_name DESC; 