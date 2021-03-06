SELECT STUDENTS.Name
FROM STUDENTS
JOIN FRIENDS on STUDENTS.ID = Friends.ID
JOIN PACKAGES as P1 on STUDENTS.ID = P1.ID
JOIN PACKAGES as P2 on FRIENDS.FRIEND_ID = P2.ID
WHERE P1.SALARY < P2.SALARY
ORDER BY P2.SALARY;