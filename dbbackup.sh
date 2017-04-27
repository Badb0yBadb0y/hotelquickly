#!/bin/bash
mysqldump -h104.199.183.52 -uroot --routines --events alice  > /root/alice.sql
mysqldump -h104.199.223.5  -uroot --routines --events brandy  > /root/brandy.sql
mysql -uroot -h104.199.183.52 test_alice < /root/alice.sql
mysql -uroot -h104.199.223.5 test_brandy < /root/brandy.sql
