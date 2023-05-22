CREATE TABLE `data_platform_postal_code_postal_code_data`
(
    `PostalCode`             varchar(10) NOT NULL,
    `Country`                varchar(3) NOT NULL,
    `LocalSubRegion`         varchar(3) NOT NULL,
    `LocalRegion`            varchar(3) NOT NULL,
    `GlobalRegion`           varchar(3) NOT NULL,

    PRIMARY KEY (`PostalCode`, `Country`)

    CONSTRAINT `DataPlatformPostalCodePostalCodeDataLocalSubRegion_fk` FOREIGN KEY (`LocalSubRegion`, `LocalRegion`, `Country`) REFERENCES `data_platform_local_region_local_sub_region_data` (`LocalSubRegion`, `LocalRegion`, `Country`)

) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
