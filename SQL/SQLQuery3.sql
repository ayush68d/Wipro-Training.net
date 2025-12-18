INSERT INTO Students (FirstName, LastName, Email, DateOfBirth)
VALUES
('Amit', 'Sharma', 'amit@uni.com', '2001-05-10'),
('Neha', 'Verma', 'neha@uni.com', '2000-08-21'),
('Rahul', 'Mahta', 'rahul@uni.com', '1999-12-15')

select * from students
SELECT FirstName, Email FROM Students;
-- Filter
SELECT * FROM Students
WHERE FirstName  = 'NEHA'
--sort
SELECT * FROM Students
ORDER BY DateOfBirth;
