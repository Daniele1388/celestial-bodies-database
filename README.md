# 🌌 Celestial Bodies Database – FreeCodeCamp SQL Project

This project is part of the **Relational Database Certification** on [freeCodeCamp.org](https://www.freecodecamp.org/).\
It consists of designing and implementing a PostgreSQL relational database that models celestial bodies in the universe.

## 🛠️ Project Overview

The database, named `universe`, includes five related tables:

- **galaxy**: contains general information about galaxies, including type, distance from Earth, and description.
- **star**: stores data about stars, each linked to a galaxy.
- **planet**: represents planets, with details such as distance from their star, habitability, and diameter.
- **moon**: includes natural satellites associated with planets, with properties like distance from Earth and shape.
- **planet_type**: a normalized table for classifying planets by type (e.g., terrestrial, gas giant, etc.)

The schema demonstrates key relational concepts such as:

- Primary and foreign keys
- One-to-many relationships
- Data normalization
- Use of different data types (`BOOLEAN`, `NUMERIC`, `VARCHAR`, `SERIAL`)

## 🌍 Data Highlights

- 6 galaxies
- 12 stars
- 12 planets
- 20 moons
- 4 planet types

## 📦 Technologies

- PostgreSQL
- psql CLI
- SQL (DDL & DML)

---

## ✅ Project Status

All project requirements from FreeCodeCamp have been completed.

---

## 📎 License

This project is open-source and available under the MIT License.
