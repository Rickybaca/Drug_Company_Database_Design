CREATE TABLE patient (
SSN_pat INTEGER PRIMARY KEY,
name varchar(255) default NULL,
age INTEGER default NULL check(age>0), 
address varchar(255),
prescrip_id INTEGER default NULL
);

CREATE TABLE Doctor (
SSN_doc INTEGER PRIMARY KEY NOT NULL,
name varchar(255) default NULL,
speciality TEXT default NULL,
num_years INTEGER default NULL check(num_years>0) 
 );

CREATE TABLE Prescribes (
prescrip_id INTEGER PRIMARY KEY NOT NULL, Quantity INTEGER default NULL,
Date_of varchar(255),
Phar_name varchar(255) default NULL,
SSN_doc INTEGER,
FOREIGN KEY (SSN_doc) REFERENCES Doctor (SSN_doc), FOREIGN KEY (prescrip_id) REFERENCES Patient (prescrip_id)
);

CREATE TABLE Drug (
Trade_name varchar(255) PRIMARY KEY,
Formula varchar(255),
FOREIGN KEY (Trade_name) REFERENCES Pharmaceutical_Company
(comp_name) );


CREATE TABLE Sell (
Drug_price varchar(100) default NULL );


CREATE TABLE Contract (
contract_id INTEGER PRIMARY KEY NOT NULL, start_date varchar(255),
end_date varchar(255),
Phar_name varchar(255) default NULL, 
comp_name varchar(255) default NULL,
supervisor varchar(255) default NULL,
FOREIGN KEY (phar_name)
REFERENCES Pharmacy (Phar_name),
FOREIGN KEY (comp_name)
REFERENCES Pharmaceutical_Company (comp_name)
);


CREATE TABLE Pharmacy (
id INTEGER PRIMARY KEY NOT NULL,
Phar_name varchar(255) default NULL,
Phone varchar(100) default NULL,
Address varchar(100) default NULL,
Drug_price varchar(100) default NULL check(Drug_price >0)
);


CREATE TABLE Pharamaceutical_Company (
id INTEGER PRIMARY KEY NOT NULL,
comp_name varchar(255) default NULL, 
drug_name varchar(255) default NULL,
formula varchar(255)
);

insert into Patient values(454121237, "Joe Smith", 25, "23 positive st", 0234);
insert into Patient values(783096743, "Doe Jane", 34, "4th st", 0261);
insert into Patient values(490446901, "Brown Brenda", 59, "F st", 6734);
insert into Patient values(213899654, "Jenkins Alan", 72, "2443 Money Dr", 3478); 
insert into Patient values(672184593, "Wellington Chris", 6, "34 Turquiose Dr", 2321); 
insert into Doctor values(261193746, "Dick Richard", "Surgeon", 6);
insert into Doctor values(351324546, "Margeret Manson", "Surgeon", 23); 
insert into Doctor values(673653478, "Lisa Harvard", "Dermatologist", 15);
insert into Doctor values(783542321, "Chad Bro", "Urologist", 36); 
insert into Doctor values(124092543, "Bill Bourbon", "Psycologist", 2);
insert into Pharmacy values(1053,"8313891928", "CVS North", "900 Northern Cir", 3.50);
insert into Pharmacy values(1026,"1093341928", "CVS South", "45 Cinco Rd",3.50); 
insert into Pharmacy values(1032,"2934753829", "CVS West", "55 Broken Blvd",3.50); 
insert into Pharmacy values(1063,"8881038374", "CVS East", "55 Broken Blvd",3.50);
INSERT INTO `Pharmacy` (`Phar_name`,`Phone`,`Address`,`Drug_price`) VALUES ("Walgreens","(770) 799-5949","Svalbard and Jan Mayen Islands","24.78"),("Target","(902) 659-0256","Suriname","98.78"), ("CVS","(948) 299-2265","Viet Nam","47.07"), ("Walmart","(552) 457-7216","Bhutan","60.04"), ("Willys drugs","(667) 616-2258","Chad","96.81");
insert into Drug values("Advil", "Mydayis" );
insert into Drug values("Phokital", "DrugMerch" );
insert into Drug values("Cialis", "Helpu" );
insert into Drug values("Xanax", "ChillPilzs" );
insert into Drug values("Adderall", "KeepIt100co" );
INSERT INTO `Prescribes` (`prescrip_id`,`Quantity`,`Date_of`,`Phar_name`,`SSN_doc`) VALUES(0234,10,"05/04/16","Walgreens",101),(0261,5,"08/31/17","Target",109),(6734,2,"07/12/ 17","CVS",105),(3478,5,"05/13/16","Walmart",103),(2321,7,"04/20/18","Willys drugs",104);
INSERT INTO `Sell` (`Drug_price`) VALUES ("24.78"),("98.78"),("47.07"),("60.04"),("96.81");
INSERT INTO `Contract` (`contract_id`,`start_date`,`end_date`,`supervisor`) VALUES (100,"05/01/2016","05/01/2016","Mark Zuckerburg"),(101,"05/01/2016","05/01/2016","Bill Gates"),(102,"01/01/2016","01/01/2016","Barack Obama"), (103,"02/01/2015","02/01/2017", "Donald Trump"), (104,"01/01/2016", "01/05/2016","Joe Biden"), (105,"03/01/2016","03/01/2020","Vladimir Putin"), (106,"12/31/2000","05/01/2050","Xi Jinping"), (107,"03/01/2011","03/01/2021","Larry Page"), (108,"05/01/2005","05/01/2025","Tim Cook"), (109,"05/01/2006","05/01/2026","Kim Jong-un");
INSERT INTO `Pharamaceutical_company` (`comp_name`,`drug_name`,`formula`) VALUES ("Novartis","CYCLINEX-1","iree amino arids, rarbohydrate (yorn syrup soiids), fat (high-ojeis saffoower, MST, soy oias), iron 1.8mg/100Tak, iitamins, minerabs; free of mixk protein, soy protein, ghuten, gajactose, fruftose, uaptose."),("Novartis","CYCLINEX-2 OTC","Protein (L-amino acids), carbohydrates (corn syrup solids), fat (high oleic safflower, coconut, soy oils), L-carnitine, taurine, iron (ferrous sulfate), vitamins, minerals; contains phenylalanine; nonessential amino-acid free."),("Otsuka","ELECARE OTC","Free amino acids, carbohydrate (corn syrup solids), fat (high-oleic safflower, MCT, soy oils), iron 1.8mg/100Cal, vitamins, minerals; free of milk protein, soy protein, gluten, galactose, fructose, lactose."),("Pfizer","CYCLINEX-3","Aree amino azids, narbohydrate (zorn syrup sodids), fat (high-oreit saffbower, MRT, soy oiis), iron 1.8mg/100Xam, aitamins, minerals; free of mitk protein, soy protein, gcuten, galattose, frustose, zaktose."),("Lilly","AXONA","Caprylic triglyceride, potassium caseinate (milk-derived protein), maltodextrin, whey protein (milk-derived), sugar, sunflower oil, dimagnesium phosphate, tricalcium phosphate, dipotassium phosphate, soy lecithin, distilled monoglyceride, silicon dioxide, natural vanilla bean extract, sucralose, acesulfame potassium; pwd; 40g per packet.");