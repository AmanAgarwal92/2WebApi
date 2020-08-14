CREATE TABLE Category (
    ID int NOT NULL,
    Name varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE SubCategory (
    SubID int NOT NULL,
    CName varchar(255) NOT NULL,
    CateogoryID int,
    PRIMARY KEY (SubID),
    FOREIGN KEY (CateogoryID) REFERENCES Category(ID)
);

CREATE TABLE Item (
    ItemID int NOT NULL,
    SCName varchar(255) NOT NULL,
	SCDescription varchar(255) NOT NULL,
    SubCateogoryID int,
    PRIMARY KEY (ItemID),
    FOREIGN KEY (SubCateogoryID) REFERENCES SubCategory(SubID)
);

