BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','');
INSERT INTO "Account" VALUES(2,'Colud Solutions','');
CREATE TABLE "Delivery_Item__c" (
	id INTEGER NOT NULL, 
	"Food_Expiration_Date__c" VARCHAR(255), 
	"Food_Storage__c" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Delivery__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery_Item__c" VALUES(1,'','Refrigated','Coke','1');
INSERT INTO "Delivery_Item__c" VALUES(2,'2021-03-27','Refrigated','Milk','2');
INSERT INTO "Delivery_Item__c" VALUES(3,'2021-03-28','Non-refrigated','Egg','2');
INSERT INTO "Delivery_Item__c" VALUES(4,'2021-03-28','Frozen','Beacon','2');
INSERT INTO "Delivery_Item__c" VALUES(5,'2021-04-25','Frozen','Food Can','1');
INSERT INTO "Delivery_Item__c" VALUES(6,'2021-04-30','Non-refrigated','Bun','1');
CREATE TABLE "Delivery__c" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"Scheduled_Date__c" VARCHAR(255), 
	"Status__c" VARCHAR(255), 
	"Supplier__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Delivery__c" VALUES(1,'Lunch Items','2021-03-31T19:00:00.000+0000','Scheduled','2');
INSERT INTO "Delivery__c" VALUES(2,'Breakfast Items','2021-03-21T19:00:00.000+0000','Requested','2');
COMMIT;
