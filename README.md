### SKUB::RE

## Databases

#KEYS
UNIQUE Id - Integer - Classical id
UNIQUE Key - String - Code to enter
Isactive - Boolean - Self explanatory ^1
Accesstype - Integer - Type of accounted to create with key
(Account_id - Reference - Link to the accounted created with the key) - Later

^1(You need to add a routine to delete the unactivated keys later)
Key format RE-123e4567-e89b-12d3-a456-426655440000 (UUID) (on change facilement)
