CREATE TABLE `data_platform_postal_code_postal_code_address_data`
(
    `PostalCode`              varchar(10) NOT NULL,
    `LocalRegion`             varchar(3) NOT NULL,
    `Country`                 varchar(3) NOT NULL,
    `Language`                varchar(2) NOT NULL,
    `StreetName`              varchar(200) DEFAULT NULL,
    `CityName`                varchar(200) DEFAULT NULL,
    `AddressText`             varchar(300) DEFAULT NULL,
    PRIMARY KEY (`PostalCode`, `LocalRegion`, `Country`, `Language`),
    CONSTRAINT `DataPlatformPostalCodePostalCodeAddressData_fk` FOREIGN KEY (`PostalCode`, `LocalRegion`, `Country`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `LocalRegion`, `Country`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
