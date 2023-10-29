SELECT table0.data+table1.data+table2.data+table3.data+table4.data
FROM table0
JOIN table1 ON table1.id=table0.id
JOIN table2 ON table2.id=table1.id
JOIN table3 ON table3.id=table2.id
JOIN table4 ON table4.id=table3.id