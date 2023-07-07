CREATE TABLE Role (
  ID INT PRIMARY KEY,
  Name VARCHAR(255)
);

INSERT INTO Role (ID, Name) VALUES
  (1, 'Лидер проекта'),
  (2, 'Тимлид команды специалистов по тестированию'),
  (3, 'Тимлид команды разработчиков'),
  (4, 'Frontend разработчик'),
  (5, 'Backend разработчик');
