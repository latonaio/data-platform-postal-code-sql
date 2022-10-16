CREATE TABLE `data_platform_postal_code_postal_code_data`
(
    `PostalCode`             varchar(10) NOT NULL,
    `LocalRegion`            varchar(3) NOT NULL,
    `Country`                varchar(3) NOT NULL,
    PRIMARY KEY (`PostalCode`, `LocalRegion`, `Country`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
