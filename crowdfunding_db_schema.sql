
        
CREATE TABLE campaign
(
  cf_id          INTEGER NOT NULL,
  contact_id     INT     NOT NULL,
  company_name   VARCHAR NOT NULL,
  description    TEXT    NOT NULL,
  goal           FLOAT   NOT NULL,
  pledged        FLOAT   NOT NULL,
  outcome        TEXT    NOT NULL,
  backers_count  INT     NOT NULL,
  country        VARCHAR NOT NULL,
  currency       DOUBLE  NOT NULL,
  launch_date    TIME    NOT NULL,
  end_date       TIME    NOT NULL,
  Category_id    VARCHAR NOT NULL,
  Subcategory_id VARCHAR NOT NULL,
  PRIMARY KEY (cf_id)
);

CREATE TABLE category
(
  Category_id VARCHAR NOT NULL,
  Category    TEXT    NOT NULL,
  PRIMARY KEY (Category_id)
);

CREATE TABLE contacts
(
  contact_id INT     NOT NULL,
  first_name TEXT    NOT NULL,
  last_name  TEXT    NOT NULL,
  email      VARCHAR NOT NULL,
  PRIMARY KEY (contact_id)
);

CREATE TABLE subcategory
(
  Subcategory_id VARCHAR NOT NULL,
  Subcategory    TEXT    NOT NULL,
  PRIMARY KEY (Subcategory_id)
);

ALTER TABLE campaign
  ADD CONSTRAINT FK_contacts_TO_campaign
    FOREIGN KEY (contact_id)
    REFERENCES contacts (contact_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_category_TO_campaign
    FOREIGN KEY (Category_id)
    REFERENCES category (Category_id);

ALTER TABLE campaign
  ADD CONSTRAINT FK_subcategory_TO_campaign
    FOREIGN KEY (Subcategory_id)
    REFERENCES subcategory (Subcategory_id);

SELECT *
FROM campaign;

SELECT *
FROM category;

SELECT *
FROM subcategory;

SELECT *
FROM contacts;
