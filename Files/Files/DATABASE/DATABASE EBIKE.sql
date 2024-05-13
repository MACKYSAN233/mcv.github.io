CREATE TABLE Bikes (
    id INTEGER PRIMARY KEY,
    name TEXT,
    price NUMERIC,
    year INTEGER,
    transmission TEXT,
    battery_types TEXT,
    speed_range TEXT
);

CREATE TABLE Services (
    id INTEGER PRIMARY KEY,
    name TEXT,
    description TEXT
);

CREATE TABLE Accessories (
    id INTEGER PRIMARY KEY,
    name TEXT
);

CREATE TABLE BikeServices (
    bike_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY(bike_id) REFERENCES Bikes(id),
    FOREIGN KEY(service_id) REFERENCES Services(id),
    PRIMARY KEY(bike_id, service_id)
);

CREATE TABLE BikeAccessories (
    bike_id INTEGER,
    accessory_id INTEGER,
    FOREIGN KEY(bike_id) REFERENCES Bikes(id),
    FOREIGN KEY(accessory_id) REFERENCES Accessories(id),
    PRIMARY KEY(bike_id, accessory_id)
);

CREATE TABLE Branches (
    id INTEGER PRIMARY KEY,
    location TEXT,
    country TEXT
);
