CREATE TABLE Publisher (
  PublisherID INTEGER  NOT NULL  ,
  Name VARCHAR(50)    ,
  WebsiteURL VARCHAR(100)    ,
  City VARCHAR(30)    ,
  Street VARCHAR(30)    ,
  StreetNumber INTEGER    ,
  Postcode VARCHAR(10)      ,
PRIMARY KEY(PublisherID));



CREATE TABLE Warehouse (
  WarehouseID INTEGER  NOT NULL  ,
  PhoneNumber CHAR(10)    ,
  City CHAR(30)    ,
  Street CHAR(30)    ,
  StreetNumber INTEGER    ,
  Postcode CHAR(10)      ,
PRIMARY KEY(WarehouseID));



CREATE TABLE Writer (
  WriterID INTEGER  NOT NULL  ,
  FirstName VARCHAR(30)    ,
  LastName VARCHAR(30)    ,
  Email VARCHAR(50)      ,
PRIMARY KEY(WriterID));



CREATE TABLE Customer (
  CustomerID INTEGER  NOT NULL  ,
  FirstName VARCHAR(30)    ,
  LastName VARCHAR(30)    ,
  FathersName VARCHAR(30)    ,
  Email VARCHAR(50)    ,
  City VARCHAR(30)    ,
  Street VARCHAR(30)    ,
  StreetNumber INTEGER    ,
  Postcode VARCHAR(10)      ,
PRIMARY KEY(CustomerID));



CREATE TABLE ShopingCart (
  CartID INTEGER  NOT NULL  ,
  CustomerID INTEGER  NOT NULL  ,
  PurchaseDate DATETIME      ,
PRIMARY KEY(CartID, CustomerID));



CREATE TABLE PublisherPhones (
  Phone CHAR(10)  NOT NULL  ,
  PublisherID INTEGER  NOT NULL    ,
PRIMARY KEY(Phone, PublisherID));



CREATE TABLE CustomerPhones (
  Phone CHAR(10)  NOT NULL  ,
  CustomerID INTEGER  NOT NULL    ,
PRIMARY KEY(Phone, CustomerID));



CREATE TABLE Book (
  BookID INTEGER  NOT NULL  ,
  WarehouseID INTEGER  NOT NULL  ,
  PublisherID INTEGER  NOT NULL  ,
  Title VARCHAR(100)    ,
  ISBN VARCHAR(13)    ,
  PublicationYear INTEGER    ,
  Price INTEGER    ,
  Quantity INTEGER      ,
PRIMARY KEY(BookID));



CREATE TABLE Contains (
  CustomerID INTEGER  NOT NULL  ,
  CartID INTEGER  NOT NULL  ,
  BookID INTEGER  NOT NULL  ,
  PriceCut INTEGER      ,
PRIMARY KEY(CustomerID, CartID, BookID));



CREATE TABLE Wrote (
  WriterID INTEGER  NOT NULL  ,
  BookID INTEGER  NOT NULL    ,
PRIMARY KEY(WriterID, BookID));



