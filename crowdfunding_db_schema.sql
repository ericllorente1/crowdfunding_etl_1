-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

create table  "contacts" (
    "contact_id" int,
    "first_name" varchar(200) NOT NULL,
    "last_name" varchar(200) NOT NULL,
    "email" varchar(200) NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

create table  "category" (
    "category_id" varchar(15) NOT NULL,
    "category" varchar(15) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

create table  "subcategory" (
    "subcategory_id" varchar (30) NOT NULL,
    "subcategory" varchar(30) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

create table "campaign"(
"cf_id" int NOT NULL ,
"contact_id" int NOT NULL REFERENCES contacts(contact_id),
"company_name" varchar(200)NOT NULL ,
"description" varchar(200)NOT NULL,
"goal" float NOT NULL,
"pledged" float NOT NULL,
"outcome" varchar(200) NOT NULL,
"backers_count" int NOT NULL,
"country" varchar(200) NOT NULL,
"currency" varchar(200) NOT NULL,
"launched_date" date NOT NULL,
"end_date" date NOT NULL,
"category_id" varchar(200) NOT NULL REFERENCES category(category_id),
"subcategory_id" varchar(200) NOT NULL REFERENCES subcategory(subcategory_id),
	constraint "pk_campaign" primary key("cf_id")
	
);
