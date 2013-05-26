<html>

<head>
	<title>Cursos</title>
</head>

<body>

<h1>Listado de Cursos</h1>
<p/>

<table border="1">
	<tr>
		<td>Vacantes</td>
		<td>Docentes</td>
		<td>Horarios</td>
	</tr>
	<g:each in="${todasLasMaterias}" status="i" var="materia">
		<tr>
			<td>${materia.departamento}.${materia.codigo}</td>
			<td>${materia.nombre}</td>
			<td>Cursos</td>
		</tr>
	</g:each>
</table>
</body>

</html>