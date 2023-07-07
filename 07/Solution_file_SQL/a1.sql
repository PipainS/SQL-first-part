CREATE TABLE Participants (
  ID INT PRIMARY KEY,
  Name VARCHAR(255),
  ParentID INT,
  RoleID INT,
  FOREIGN KEY (ParentID) REFERENCES Participants(ID),
  FOREIGN KEY (RoleID) REFERENCES Role(ID)
);

INSERT INTO Participants (ID, Name, ParentID, RoleID) VALUES
  (1, 'Сергей Петров', NULL, 1),
  (2, 'Анна Потапова', 1, 2),
  (3, 'Ильяс Мухаметшин', 1, 3),
  (4, 'Иван Иванов', 3, 4),
  (5, 'Екатерина Андреева', 3, 5);
