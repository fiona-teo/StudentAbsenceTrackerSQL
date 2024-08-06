# StudentAbsenceTrackerSQL

This project involves the creation of a relational database system to manage student contact details and track their planned vacation periods. The system consists of two primary tables: student and studentVacation. It is designed to efficiently store, manage, and query information about students and their availability based on vacation schedules.

Database Schema:
student Table: Stores essential contact details for students, including their names and email addresses. The student's name serves as the primary key.
studentVacation Table: Records the intervals during which students will be absent, including the start and end dates of their vacations. It references the student table to ensure consistency and includes a check constraint to validate that the start date is not after the end date.

Key Functionalities:
Student Information Management: Maintains up-to-date contact information for all students.
Vacation Tracking: Captures and manages data on student vacations, ensuring accurate records of when students will be unavailable.
Data Integrity and Constraints: Implements primary and foreign key constraints to maintain relational integrity and a check constraint to ensure valid date ranges.
