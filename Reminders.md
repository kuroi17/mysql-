Perfect, bro! 😎 Here’s a **concise SQL reminder guide** you can save in your GitHub repo as `SQL_Reminders.md` or just a text file. You can refer to it anytime while coding.

---

# **SQL & phpMyAdmin Reminders**

## **1️⃣ Keywords**

* SQL commands like `SELECT`, `FROM`, `WHERE`, `INSERT`, `UPDATE`, `DELETE`, `CREATE`, `ALTER` **are not case-sensitive**.

  ```sql
  select * from Students where Program = 'BSIT';
  SELECT * FROM Students WHERE Program = 'BSIT';
  ```
* ✅ Both are correct and will work.

---

## **2️⃣ Table and Column Names**

* **Windows (XAMPP default)** → Not case-sensitive:

  * `Students` = `students` = `STUDENTS`
  * `First_Name` = `first_name` = `FIRST_NAME`
* **Linux / some servers** → Table names **may be case-sensitive**; column names usually **not sensitive**.
* **Tip:** Be consistent with capitalization to avoid confusion.

---

## **3️⃣ Data / Values**

* **Case-sensitive**! Strings must match exactly when using `=`:

  ```sql
  SELECT * FROM Students WHERE First_Name = 'Maria';  -- works
  SELECT * FROM Students WHERE First_Name = 'maria';  -- returns nothing
  ```
* Use `LIKE` or `LOWER()` for case-insensitive searches:

  ```sql
  SELECT * FROM Students WHERE First_Name LIKE 'maria';
  SELECT * FROM Students WHERE LOWER(First_Name) = 'maria';
  ```

---

## **4️⃣ SQL Scripting Workflow**

1. **Table creation + initial data + ALTER / UPDATE** → Save as `tables.sql`.
2. **Practice queries** → Save as `queries.sql` or run manually in CMD/phpMyAdmin.
3. **Run in phpMyAdmin:**

   * Click database → SQL tab → paste → Go
4. **Run in CMD:**

   ```bash
   mysql -u root -p < path\to\tables.sql
   ```

---

## **5️⃣ Good Practices**

* End **every statement with `;`**
* Insert **parent tables first** (Students, Courses) before dependent tables (Enrollments)
* Keep **consistent naming** for readability:

  * Tables: `Students`, `Courses`, `Enrollments`
  * Columns: `Student_ID`, `First_Name`, `Last_Name`, `Program`
* Save SQL scripts for **backup and version control** (GitHub repo)

---

## **6️⃣ Quick Commands**

| Goal                | Command                                                            |
| ------------------- | ------------------------------------------------------------------ |
| Show databases      | `SHOW DATABASES;`                                                  |
| Use database        | `USE Ponce_EnrollmentDB;`                                          |
| Show tables         | `SHOW TABLES;`                                                     |
| Describe table      | `DESCRIBE Students;`                                               |
| Export DB to `.sql` | `mysqldump -u root -p Ponce_EnrollmentDB > Ponce_EnrollmentDB.sql` |

---

I can also make a **super short one-page version with emojis and colors** that’s easier to read and fun to put in GitHub.

Do you want me to do that too?
