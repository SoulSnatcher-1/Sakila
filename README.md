# Sakila
# Sakila Database Analysis: Business Insights for a DVD Rental Store

**Project Objective:** To analyze the Sakila DVD rental database to identify key business drivers, customer behaviours, and inventory performance. <br> 
The goal is to provide actionable recommendations to increase revenue and improve operational efficiency.

---

## Tools and Setup
* **Database:** PostgreSQL
* **Data:** Sakila Sample Database (PostgreSQL port)
* **IDE:** pgAdmin 4
* **Analysis:** SQL (queries are available in the `queries.sql` file)

---

## Analysis & Key Questions
This analysis seeks to answer the following business questions:

1.  **Customer Analysis:** Who are our most valuable customers?
2.  **Inventory Analysis:** What are our most popular and profitable film categories?
3.  **Performance Analysis:** Which store location is generating more revenue?
4.  **Operational Analysis:** What is the average rental duration, and does it vary by category?

---

## 💡 Key Findings & Insights

1. Karl Seal is the highest paying customer with $221.55
   
KARL	  | SEAL	    | 221.55
ELEANOR	| HUNT	    | 216.54
CLARA	  | SHAW	    | 195.58
MARION	| SNYDER    | 194.61
RHONDA	| KENNEDY   | 194.61
TOMMY   | COLLAZO   | 186.62
WESLEY	| BULL	    | 177.60
TIM     | CARY	    | 175.61
MARCIA	| DEAN	    | 175.58
ANA     | BRADLEY   | 174.66

2. Sports is the most popular and profitable film category.
   
Most popular film categories with the number of rentals

Sports    |	 1179
Animation |	 1166
Action	  |  1112
Sci-Fi	  |  1101
Family	  |  1096

Most profitable film categories with the number of rentals

Sports	  |  5314.21
Sci-Fi	  |  4756.98
Animation	|  4656.30
Drama	    |  4587.39
Comedy  	|  4383.58

3. Store 2 outperforms Store 1 by $437.57 

2	|28 MySQL Boulevard	  |Woodridge	  |Australia	|33927.04
1	|47 MySakila Drive	  |Lethbridge	  |Canada	    |33489.47

4. The average rental duration is 4 days, 24 hours, 35 minutes, and 17.540453 seconds, and the difference between the category with the maximum average rental duration and the category with the minimum rental duration is 9 hours, 38 minutes, and 27.007006 seconds.
   
The average rental duration for all returned films

4 days 24:36:28.541706

The average rental duration varies by category

Sports	           |    4 days 28:43:48.917526
Games              |    4 days 28:24:44.167539
Comedy	           |    4 days 27:34:51.695279
Sci-Fi	           |    4 days 25:54:12.73559
Music	             |    4 days 25:39:51.282051
Documentary        |	  4 days 25:22:12.483221
Family	           |    4 days 25:13:53.905817
Horror	           |    4 days 24:55:33.884892
Action	           |    4 days 24:38:36.821918
New	               |    4 days 24:35:17.540453
Foreign            |	  4 days 24:30:40.802348
Children	         |    4 days 22:48:56.805111
Classics	         |    4 days 22:45:54.903225
Drama	             |    4 days 21:14:59.031339
Animation          |    4 days 20:55:51.510917
Travel	           |    4 days 19:46:21.91052

---

## 💻 SQL Queries
All queries used for this analysis are located in the `queries.sql` file.

