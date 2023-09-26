CREATE TABLE `data_platform_postal_code_postal_code_address_data`
(
    `PostalCode`                   varchar(10) NOT NULL,
    `Country`                      varchar(3) NOT NULL,
    `PostalCodeAddressDetailText`  varchar(200) DEFAULT NULL,
    `CityName`                     varchar(200) DEFAULT NULL,
    `Building`                     varchar(100) DEFAULT NULL,
    `Floor`                        int(4) DEFAULT NULL,
    `PostalCodeAddressTotalText`   varchar(300) DEFAULT NULL,

    PRIMARY KEY (`PostalCode`, `Country`),

    CONSTRAINT `DataPlatformPostalCodePostalCodeAddressData_fk` FOREIGN KEY (`PostalCode`, `Country`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `Country`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
