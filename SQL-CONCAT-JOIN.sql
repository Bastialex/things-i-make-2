SELECT 
Concat(`run.a`,'-',`dv.a`) as RunAlumno,
Concat(`nombre.a`,' ',`apellido.a`) as NombreAlumno,
Concat(`nombre.p`,' ',`apellido.p`) as NombreProfesor,
`nombre.s` as Sala,
`nombre.c` as Clase
FROM 
clase_alumno as ca
INNER JOIN alumno AS a ON a.id = ca.id_alumno
INNER JOIN profesor AS p ON p.id = ca.id_profesor
INNER JOIN sala AS s ON s.id = ca.id_sala
INNER JOIN clase AS c ON c.id = ca.id_clase
WHERE `edad.a` > 20
ORDER BY Concat(`apellido.a`,' ',`nombre.a`) ASC;

