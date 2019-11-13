SELECT city,count(reservations.*) as total_reservations
FROM properties
JOIN property_reviews ON properties.id = property_reviews.property_id
JOIN reservations ON reservations.id = property_reviews.reservation_id
GROUP BY city
ORDER BY total_reservations DESC;