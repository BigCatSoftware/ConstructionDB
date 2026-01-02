use ConstructionDB;

sp_helpdb 'ConstructionDB';

-- Seed Projects
insert into Projects (ProjectCode, ProjectName, City, State, StartDate, Budget, Status)
values ('PRJ-001', 'Downtown Office Tower', 'Seattle', 'WA', '2024-01-15', 1500000.00, 'Active'),
       ('PRJ-002', 'Riverside Apartments', 'Seattle', 'WA', '2024-03-01', 800000.00, 'Active'),
       ('PRJ-003', 'Tech Campus Building A', 'Bellevue', 'WA', '2024-06-01', 2500000.00, 'Pending'),
       ('PRJ-004', 'Harbor View Condos', 'Tacoma', 'WA', '2023-09-01', 1200000.00, 'Completed'),
       ('PRJ-005', 'Medical Center Expansion', 'Seattle', 'WA', '2024-02-15', 3000000.00, 'Active');

-- Seed Contractors
insert into Contractors (CompanyName, ContactName, Phone, Email, LicenseNumber, Specialty, HourlyRate)
values ('Smith Electrical LLC', 'John Smith', '206-555-0101', 'john@smithelectric.com', 'EL-12345', 'Electrical',
        85.00),
       ('ABC Plumbing', 'Alice Chen', '206-555-0102', 'alice@abcplumbing.com', 'PL-67890', 'Plumbing', 75.00),
       ('Premier Concrete Co', 'Bob Johnson', '206-555-0103', 'bob@premierconcrete.com', 'CN-11111', 'Concrete', 90.00),
       ('Pacific Steel Works', 'Maria Garcia', '206-555-0104', 'maria@pacificsteel.com', 'ST-22222', 'Steel', 95.00),
       ('Cascade Framing', 'Tom Williams', '206-555-0105', 'tom@cascadeframing.com', 'FR-33333', 'Framing', 70.00);

-- Seed Payments
insert into Payments (ProjectID, ContractorID, Amount, PaymentDate, PaymentMethod, InvoiceNumber)
values (1, 3, 100000.00, '2024-02-01', 'Check', 'INV-001'),
       (1, 3, 100000, '2024-03-01', 'Check', 'INV-002'),
       (1, 1, 50000.00, '2024-02-15', 'ACH', 'INV-003'),
       (1, 1, 50000.00, '2024-03-15', 'ACH', 'INV-004'),
       (1, 2, 40000.00, '2024-03-01', 'Check', 'INV-005'),
       (2, 5, 45000.00, '2024-03-20', 'Check', 'INV-006'),
       (2, 5, 45000.00, '2024-03-20', 'Check', 'INV-007'),
       (2, 1, 30000.00, '2024-04-01', 'ACH', 'INV-008'),
       (2, 2, 22500.00, '2024-04-15', 'Check', 'INV-009'),
       (4, 1, 75000.00, '2023-11-01', 'ACH', 'INV-010'),
       (4, 5, 50000.00, '2023-10-15', 'Check', 'INV-011'),
       (4, 5, 50000.00, '2023-11-15', 'Check', 'INV-012'),
       (5, 1, 100000.00, '2024-04-01', 'ACH', 'INV-013'),
       (5, 1, 100000.00, '2024-05-01', 'ACH', 'INV-014'),
       (5, 2, 60000.00, '2024-04-15', 'Check', 'INV-015');
