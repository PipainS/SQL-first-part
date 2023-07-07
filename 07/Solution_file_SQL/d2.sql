INSERT INTO Participants (ID, Name, ParentID, RoleID)
VALUES (
	6,
	'Иван Иванов',
	(SELECT ID FROM Role WHERE Name = 'QA тестировщик'),
	(SELECT ID FROM Participants WHERE Name = 'Анна Потапова')
)
