DECLARE @Promedio DECIMAL (18,2)

DECLARE @Personas TABLE
(
   Id INT PRIMARY KEY IDENTITY (1,1),
   Nombre NVARCHAR(50) DEFAULT 'jaja',
   Nota DECIMAL (18,2) DEFAULT 0.0,
   Libreta INT DEFAULT 0
)

--class Persona
--{
--    public int Id{get;set;}
--    public string Nombre {get; set;}
--}

--INSERT INTO Personas (Nombre, Nota, Libreta)
--VALUES('Anibal', 45.00, 2342),('Camila', 85.50, 2343),('Cecilia',60.60,2333),('Nelson', 75.70, 2337),('José',85.90,2589),('Jose Manuel',85.2,2902)

INSERT INTO @Personas(Libreta, Nombre, Nota)
VALUES 
(2342, 'Anibal', 45.00),
(2343, 'Camila', 85.50),
(2333,'Cecilia',60.60),
(2337, 'Nelson', 75.70),
(2589, 'Jose', 85.90),
(2902, 'Jose Manuel', 85.2),
(2336,'Martiñiano',85.2)
SELECT * FROM @Personas

SELECT @Promedio=AVG(Nota) FROM @Personas;


SELECT Id, Nombre, Nota, Libreta 
FROM @Personas 
WHERE Nota>@Promedio
ORDER BY Libreta DESC

PRINT @Promedio

SELECT * FROM @Personas 
WHERE SOUNDEX(NOMBRE)=soundex('jose')

select TOP 1 * from @Personas
WHERE Nota>@Promedio