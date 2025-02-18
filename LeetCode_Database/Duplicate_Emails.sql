# Solution 1

select Email from Person 
group by Email 
having count(*)>1

# Solution 2

SELECT distinct p1.Email from Person p1
INNER JOIN Person p2
ON p1.Email = p2.Email
WHERE p1.Id <> p2.Id;
