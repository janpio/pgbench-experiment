SELECT table0.data+table1.data+table2.data+table3.data+table4.data+table5.data+table6.data+table7.data+table8.data+table9.data
FROM table0
JOIN table1 ON table1.id=table0.id
JOIN table2 ON table2.id=table1.id
JOIN table3 ON table3.id=table2.id
JOIN table4 ON table4.id=table3.id
JOIN table5 ON table5.id=table4.id
JOIN table6 ON table6.id=table5.id
JOIN table7 ON table7.id=table6.id
JOIN table8 ON table8.id=table7.id
JOIN table9 ON table9.id=table8.id