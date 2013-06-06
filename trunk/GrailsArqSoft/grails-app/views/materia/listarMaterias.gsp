<html>

<head>
	<title>Materias</title>
</head>

<body>

<h1>Listado de Materias</h1>
<p/>

<table border="1">
	<tr>
		<td>Código</td>
		<td>Nombre</td>
		<td>Links</td>
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