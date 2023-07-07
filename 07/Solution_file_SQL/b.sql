WITH RECURSIVE EmployeeHierarchy AS (
  SELECT 
    p.ID,
    p.Name AS Студент,
    r.Name AS Роль,
    1 AS Уровень,
    CAST(p.Name AS VARCHAR(255)) AS "Путь от лидера"
  FROM Participants p
  JOIN Role r ON p.RoleID = r.ID
  WHERE p.ParentID IS NULL
  
  UNION ALL
  
  SELECT
    p.ID,
    p.Name AS Студент,
    r.Name AS Роль,
    eh.Уровень + 1 AS Уровень,
    CAST(COALESCE(eh."Путь от лидера", '') || ' -> ' || p.Name AS VARCHAR(255))
  FROM Participants p
  JOIN EmployeeHierarchy eh ON p.ParentID = eh.ID
  JOIN Role r ON p.RoleID = r.ID
)

SELECT 
  Студент,
  Роль,
  Уровень,
  "Путь от лидера"
FROM EmployeeHierarchy
ORDER BY Уровень, Студент




