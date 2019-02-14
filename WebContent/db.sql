CREATE TABLE IF NOT EXISTS `smartDb`.`hospital` (
  `hospitalId` INT NOT NULL AUTO_INCREMENT,
  `hos_name` VARCHAR(40) NULL,
  `street` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `district` VARCHAR(45) NULL,
  `postalNo` INT NOT NULL,
  `incharge_name` VARCHAR(45) NULL,
  `incharge_mobile` INT NULL UNIQUE,
  `recept_name` VARCHAR(45) NULL,
  `recept_mobile` INT NULL ,
  `doc_name1` VARCHAR(45) NULL ,
  `doc_mobile1`  INT  NULL UNIQUE,  
  `doc_name2` VARCHAR(45) NULL,
  `doc_mobile2`  INT  NULL UNIQUE,  
  PRIMARY KEY (`hospitalId`))
    ENGINE = InnoDB;
    
    insert into hospital(hos_name,street,city,district,postalNo,incharge_name,incharge_mobile,recept_name,recept_mobile,doc_name1,doc_mobile1,doc_name2,doc_mobile2)values('abc','def','lohit','lohit',123,'inchargename',8568,'sdj',832,'doc1',3477,'doc2',7834);
        insert into hospital(hos_name,street,city,district,postalNo,incharge_name,incharge_mobile,recept_name,recept_mobile,doc_name1,doc_mobile1,doc_name2,doc_mobile2)values('bca','fed','uk','lohit',123,'inchar',856,'sd',83,'doc',347,'doc',783);
        CREATE TABLE `attribute` (
  `scheme_code` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `age` varchar(10) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `father/husband` varchar(100) DEFAULT NULL,
  `dateOfBirth` varchar(100) DEFAULT NULL,
  `hostel` varchar(100) DEFAULT NULL,
  `school` varchar(100) DEFAULT NULL,
  `hospital` varchar(100) DEFAULT NULL,
  `village` varchar(100) DEFAULT NULL,
  `aadhar` varchar(100) DEFAULT NULL,
  `cast`varchar(100) DEFAULT NULL,
  `passbook` varchar(100) DEFAULT NULL,
  `driving` varchar(100) DEFAULT NULL,
  `bpl` varchar(100) DEFAULT NULL,
  `residance` varchar(100) DEFAULT NULL,
  `10th` varchar(100) DEFAULT NULL,
  `12th` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`scheme_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `smartDb`.`subscribe` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(100) NULL,
  `location` VARCHAR(200) NULL,
  PRIMARY KEY (`Id`))
    ENGINE = InnoDB;
    
CREATE TABLE IF NOT EXISTS `smartDb`.`upload` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `file_name` VARCHAR(100) NULL,
  `location` VARCHAR(200) NULL,
  `date1` Date NULL,
  PRIMARY KEY (`Id`))
    ENGINE = InnoDB;
    
    