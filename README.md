# SQLMonitor
SQL Scripts to monitor if tables in databases are being written to.

### **Purpeous of SQL scripts**

To monitor weather tables are being written to and to output an binary result:<br />
1 - if tabel is being activley written to.<br />
0 - if table is not being activley written to.

If the Table is empty the script completes successfully but returnes no result.

### **Description of the different scripts**

***CompareDB_30_min_UTC_print.sql*** - checkes running count field now and 30 minutes ago in **UTC** time.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as **print**.

***CompareDB_30_min_UTC_select.sql*** - checkes running count field now and 30 minutes ago in **UTC** time.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as **select**.

***CompareDB_30_min_print.sql*** - checkes running count field now and 30 minutes ago.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as **print**.

***CompareDB_30_min_select.sql*** - checkes running count field now and 30 minutes ago.
If the two values are the same the table is not being written to.
Good for DB's that are not being writte to havily all the time (i.e. low volume at night).
outputs results as **select**.

***CompareDB_w_delay_print.sql*** - checkes running count field two seconds apart.
If the two values are the same the table is not being written to.
Good for DB's that are being writte to havily all the time.
outputs result as **print**.

***CompareDB_w_delay_select.sql*** - checkes running count field two seconds apart.
If the two values are the same the table is not being written to.
Good for DB's that are being writte to havily all the time.
outputs result as **select**.
