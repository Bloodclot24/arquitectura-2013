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
		<td>Materia</td>
	</tr>
	<g:each in="${todosLosCursos}" status="i" var="curso">
		<tr>
			<td>${curso.vacantes}</td>
			<td>${curso.docentes}</td>
			<td>${curso.horarios}</td>
			<td>${curso.materia.nombre}</td>
		</tr>
	</g:each>
</table>
</body>

</html>