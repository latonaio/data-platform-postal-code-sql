CREATE TABLE `data_platform_postal_code_postal_code_data`
(
    `PostalCode`             varchar(10) NOT NULL,
    `LocalRegion`            varchar(3) NOT NULL,
    `Country`                varchar(3) NOT NULL,
    `GlobalRegion`           varchar(3) NOT NULL,

    PRIMARY KEY (`PostalCode`, `LocalRegion`, `Country`)

    CONSTRAINT `DataPlatformPostalCodePostalCodeDataLocalRegion_fk` FOREIGN KEY (`LocalRegion`, `Country`, `GlobalRegion`) REFERENCES `data_platform_local_region_local_region_data` (`LocalRegion`, `Country`, `GlobalRegion`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
