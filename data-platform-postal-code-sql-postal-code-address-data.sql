CREATE TABLE `data_platform_postal_code_postal_code_address_data`
(
    `PostalCode`                   varchar(10) NOT NULL,
    `LocalRegion`                  varchar(3) NOT NULL,
    `Country`                      varchar(3) NOT NULL,
    `GlobalRegion`                 varchar(3) DEFAULT NULL,
    `PostalCodeAddressDetailText`  varchar(200) DEFAULT NULL,
    `CityName`                     varchar(200) DEFAULT NULL,
    `Builiding`                    varchar(100) DEFAULT NULL,
    `Floor`                        int(4) DEFAULT NULL,
    `PostalCodeAddressTotalText`   varchar(300) DEFAULT NULL,

    PRIMARY KEY (`PostalCode`, `LocalRegion`, `Country`),

    CONSTRAINT `DataPlatformPostalCodePostalCodeAddressData_fk` FOREIGN KEY (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`) REFERENCES `data_platform_postal_code_postal_code_data` (`PostalCode`, `LocalRegion`, `Country`, `GlobalRegion`)
    
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
