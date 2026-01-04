-- majorly used when we have to perform typical operations like Deletion to make sure that only required data is deleted from the database 

Set autocommit =0;
Select * from newyear_data;
delete from newyear_data where roll_no='3';
rollback;
Select * from newyear_data;
delete from newyear_data where roll_no='8';
commit;
Set autocommit =1;

/*
Autocommit=0; -- When AutoCommit is off, you can explicitly control when to commit or rollback changes.
Commit; -- Once you’ve made changes and you’re confident that everything is correct, you can use the COMMIT command to save those changes.
Rollback; -- If you make an error or decide you don’t want to save your changes, you can rollback the transaction to its previous state.
Autocommit=1; -- If you want to turn AutoCommit back on (so that every statement is automaticallycommitted), you can do so with   'Set AUTOCOMMIT=1;' 

Use COMMIT when you want to make changes permanent.
Use ROLLBACK to discard changes if something goes wrong.
Consider disabling AutoCommit when performing complex updates to avoid saving partial or incorrect data.
