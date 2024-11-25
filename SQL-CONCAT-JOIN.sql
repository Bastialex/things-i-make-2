SELECT 
Concat(a.run,'-',a.dv) as RunAlumno,
Concat(a.nombre,' ',a.apellido) as NombreAlumno,
Concat(p.nombre,' ',p.apellido) as NombreProfesor,
s.nombre as Sala,
c.nombre as Clase
FROM 
clase_alumno as ca
INNER JOIN alumno AS a ON a.id = ca.id_alumno
INNER JOIN profesor AS p ON p.id = ca.id_profesor
INNER JOIN sala AS s ON s.id = ca.id_sala
INNER JOIN clase AS c ON c.id = ca.id_clase
WHERE a.edad > 20
ORDER BY Concat(a.apellido,' ',a.nombre) ASC;

