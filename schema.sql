create database ConstructionDB;
GO

use ConstructionDB;
GO

-- Projects table
create table Projects (
    ProjectID int identity(1, 1) primary key,
    ProjectCode char(10) not null unique,
    ProjectName varchar(100) not null,
    City varchar(50),
    State char(2),
    StartDate date not null,
    EndDate date,
    Budget decimal(15, 2) not null,
    Status varchar(20) default 'Pending',
    constraint CK_Projects_Budget check (Budget > 0),
    constraint CK_Projects_Status check (Status in ('Pending', 'Active', 'On Hold', 'Completed', 'Cancelled'))
);

-- Contractors table
create table Contractors (
    ContractorID int identity(1, 1) primary key,
    CompanyName varchar(100) not null,
    ContactName varchar(100),
    Phone varchar(100),
    Email varchar(100),
    LicenseNumber varchar(20) unique,
    Specialty varchar(50),
    HourlyRate decimal(10, 2),
    constraint CK_Contractors_Rate check (HourlyRate > 0)
);

-- Payments table
create table Payments (
    PaymentID int identity(1, 1) primary key,
    ProjectID int not null,
    ContractorID int not null,
    Amount decimal(12, 2) not null,
    PaymentDate date not null,
    PaymentMethod varchar(20) default 'Check',
    InvoiceNumber varchar(50),
    constraint FK_Payments_Projects foreign key (ProjectID) references Projects(ProjectID),
    constraint FK_Payments_Contractors foreign key (ContractorID) references Contractors(ContractorID),
    constraint CK_Payments_Amount check (Amount > 0),
    constraint CK_Payments_Method check (PaymentMethod in ('Check', 'ACH', 'Wire', 'Credit Card'))
);
