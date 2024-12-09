-- exo 1:
CREATE DATABASE exo_contacts;
DROP DATABASE IF EXISTS exo_contacts;
CREATE TABLE contacte (
nom VARCHAR(70), NOT NULL,
prenom VARCHAR(70),
date_de_naissance DATE,
sexe VARCHAR(10),
adresse TEXT,
cp VARCHAR(10),
ville VARCHAR(70),
pays_iso_3 CHAR(3),
PRIMARY KEY (idt),
FOREIGN KEY (pays_iso_3) REFERENCES pays(iso_3) ON DELETE SET NULL 
);

CREATE TABLE pays (
iso_3 CHAR(3),
nom VARCHAR(70) NOT NULL,
iso_2 CHAR(2) NOT NULL,
nationalité VARCHAR(30),
PRIMARY KEY (iso_3, nom) 
);

CREATE TABLE telephone (
id BIGINT PRIMARY KEY AUTO_INCREMENT,
id_contact INT NOT NULL,
numero VARCHAR(50) NOT NULL,
type BYTE,
PRIMARY KEY (id),
FOREIGN KEY (id_contact) REFERENCES contacte(idt) ON DELETE CASCADE
);


-- exo 3:


INSERT INTO pays (nom, iso_2, iso_3, nationalite) VALUES 
('Afghanistan','AF','AFG','Afghane'),
('Albanie','AL','ALB','Albanaise'),
('Algérie','DZ','DZA','Algérienne'),
('Angola','AO','AGO','Angolaise'),
('Argentine','AR','ARG','Argentine'),
('Arménie','AM','ARM','Arménienne'),
('Australie','AU','AUS','Australienne'),
('Autriche','AT','AUT','Autrichienne'),
('Azerbaïdjan','AZ','AZE','Azerbaïdjanaise'),
('Biélorussie','BY','BLR','Biélorusse'),
('Belgique','BE','BEL','Belge'),
('Bolivie','BO','BOL','Bolivienne'),
('Bosnie-Herzégovine','BA','BIH','Bosniaque'),
('Brésil','BR','BRA','Brésilienne'),
('Bulgarie','BG','BGR','Bulgare'),
('Cambodge','KH','KHM','Cambodgienne'),
('Cameroun','CM','CMR','Camerounaise'),
('Canada','CA','CAN','Canadienne'),
('Chili','CL','CHL','Chilienne'),
('Chine','CN','CHN','Chinoise'),
('Colombie','CO','COL','Colombienne'),
('Rébublique du Congo','CG','COG','Congolaise'),
('Cuba','CU','CUB','Cubaine'),
('Chypre','CY','CYP','Chypriote'),
('République tchèque','CZ','CZE','Tchèque');












