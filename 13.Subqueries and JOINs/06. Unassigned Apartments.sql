SELECT
    booking_id,
    apartment_id,
    companion_full_name
FROM bookings AS b
    JOIN customers AS c
        USING (customer_id)
WHERE b.apartment_id IS NULL