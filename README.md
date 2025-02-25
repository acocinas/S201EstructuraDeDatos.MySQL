# 📌 SQL Database Modeling Exercises

## 🎯 Objectives
Learn how to model SQL databases by designing schemas for different business cases.

---

## 🏥 Exercise 1 - Optics
An optician, called **"Cul d'Ampolla"**, aims to computerize the management of customers and sales of glasses.

### 🏢 Suppliers
Each **supplier** must store the following information:
- 🏷️ **Name**
- 📍 **Address** (street, number, floor, door, city, postcode, country)
- 📞 **Telephone**
- 📠 **Fax**
- 🆔 **NIF** (Tax Identification Number)

### 👓 Glasses
Each **glasses model** must include:
- 🏷️ **Brand**
- 🔍 **Graduation** (for each lens)
- 🖼️ **Frame type** (floating, plastic, or metal)
- 🎨 **Frame color**
- 🏳️‍🌈 **Lens color** (for each lens)
- 💰 **Price**

A brand is always supplied by a **single supplier**, but one supplier can provide multiple brands.

### 🧑 Customers
Each **customer** must have:
- 🏷️ **Name**
- 📍 **Postal Address**
- 📞 **Telephone**
- 📧 **Email**
- 📅 **Registration Date**
- 🤝 **Referred By** (another customer, if applicable)

### 🏬 Sales
Each sale must store:
- 🆔 **Customer**
- 🆔 **Employee** (who sold the glasses)
- 🆔 **Glasses model**
- 📅 **Sale Date**

### 🔎 Queries to verify the model
1. 📜 List the **total number of invoices** for a customer in a given period.
2. 🕶️ List the different **models of glasses sold** by an employee during a year.
3. 🏭 List the **suppliers** that have provided successfully sold glasses.

---

## 🍕 Exercise 2 - Pizzeria
You have been hired to design a **website for online food delivery orders**.

### 🧑 Customers
Each **customer** must have:
- 🆔 **Unique Identifier**
- 🏷️ **Name & Surname**
- 📍 **Address**
- 🔢 **Zip Code**
- 🏙️ **Locality**
- 🌍 **Province**
- 📞 **Phone Number**

### 📍 Locations
- Each **locality** belongs to **one province**.
- Each **province** can have **multiple localities**.
- Each **locality** and **province** has a **unique identifier** and **name**.

### 🛒 Orders
Each **order** must include:
- 🆔 **Unique Identifier**
- 📅 **Date/Time**
- 🏠 **Home Delivery or Pickup**
- 🔢 **Number of products per type**
- 💰 **Total Price**
- 🏬 **Store handling the order**

Each **customer** can place multiple **orders**, but each order belongs to **one customer only**.

### 🍔 Products
Each **product** must include:
- 🆔 **Unique Identifier**
- 🍕 **Name**
- 📝 **Description**
- 🖼️ **Image**
- 💰 **Price**

#### 🍕 Pizza Categories
- Pizzas belong to **one category**.
- A category can have **multiple pizzas**.
- Categories may change **names** throughout the year.

### 🏬 Stores
Each **store** must have:
- 🆔 **Unique Identifier**
- 📍 **Address, Zip Code, Locality, Province**
- 🏬 A store can handle **many orders**.

### 👨‍🍳 Employees
Each **employee** must have:
- 🏷️ **Name & Surname**
- 🆔 **NIF**
- 📞 **Phone Number**
- 🏢 **Works as:** Cook or Delivery Person
- 🚚 If a delivery person: **Track delivery date/time**

### 🔎 Queries to verify the model
1. 🥤 List how many **products in the category "Drinks"** have been sold in a given location.
2. 📦 List how many **orders a certain employee has placed**.

---

### 📌 Summary
These exercises will help you practice **SQL database design**, including **relationships**, **foreign keys**, and **query optimization**. 🏗️💾

🚀 **Now it's time to implement these models and test them!** 🎯

## 🛠 Tools Used
- 🐬 **MySQL Workbench 8.0** - Used for database modeling and query execution.
- 📄 **SQL Scripts** - Designed to create and query the database efficiently.

---

## 🚀 How to Run
1. Install **MySQL Workbench 8.0**.
2. Import the SQL scripts.
3. Execute the queries to validate the design.

---

### 📢 Author
Developed as part of SQL database modeling exercises.
