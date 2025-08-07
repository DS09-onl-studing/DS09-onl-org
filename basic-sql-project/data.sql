-- Компании
INSERT INTO company(company_name) VALUES
('DubaiAirlines'),
('Aeroflot'),
('Belavia'),
('MinskCityAir'),
('AutoVAZAirlines');

-- Самолеты
INSERT INTO aircrafts(aircraft_name, company_id) VALUES
('Ty-135', 1),
('Boing-777', 1),
('Ty-136', 2),
('Boing-778', 2),
('Ty-137', 3),
('Boing-779', 3),
('Ty-138', 4),
('Boing-780', 4);

-- Рейсы
INSERT INTO flights(flight_name, aircraft_id) VALUES
('Moskva-Paris', 1),
('Moskva-Minsk', 2),
('Minsk-Istanbul', 3),
('Vladivostok-Beijing', 4),
('Tokyo-Hotel', 5);

-- Билеты
INSERT INTO tickets(price, flight_id) VALUES
(500.00, 1),
(700.00, 2),
(900.00, 3),
(1100.00, 4),
(1300.00, 5),
(1500.00, 1),
(1700.00, 2),
(0.00, 3);

-- Пассажиры
INSERT INTO passengers(username) VALUES
('Ivan Ivan'),
('Petr Petr'),
('Vasya Vasya'),
('Oleg Oleg'),
('Masha Masha'),
('Dasha Dasha'),
('Glasha Glasha'),
('Nicola Nicola'),
('Albert Albert'),
('Thomas Thomas'),
('Elizabeth Elizabeth'),
('Yadviga Yadviga');

-- Акции
INSERT INTO promo(start_date, end_date, discount, flight_id) VALUES
('2025-08-01', '2025-09-01', 0.3, 1),
('2025-08-01', '2025-09-01', 0.2, 5);

-- Покупки
INSERT INTO purchase(passenger_id, ticket_id, purchase_date) VALUES
(1, 1, '2025-08-01'),
(1, 2, '2025-08-02'),
(2, 2, '2025-08-03'),
(3, 3, '2025-08-04'),
(3, 3, '2025-08-04'),
(4, 4, '2025-08-05'),
(5, 5, '2025-08-06'),
(6, 6, '2025-08-07'),
(7, 1, '2025-08-08'),
(7, 2, '2025-08-09'),
(7, 3, '2025-08-10'),
(8, 1, '2025-08-11'),
(8, 2, '2025-08-12'),
(8, 3, '2025-08-13'),
(9, 4, '2025-08-14'),
(10, 5, '2025-08-15'),
(11, 6, '2025-08-16'),
(12, 6, '2025-08-17');