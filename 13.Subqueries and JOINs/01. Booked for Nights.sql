SELECT a.address || ' ' || a.address_2 as apartment_address,
       b.booked_for AS nights
FROM apartments AS a
         JOIN bookings AS b
              USING (booking_id)
ORDER BY a.apartment_id