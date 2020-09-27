<!-- Parada Sánchez Liliana -->
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Datos registrados</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%
	String nombre = request.getParameter("nombre");
	String apellido = request.getParameter("apellido");
	String usuario = request.getParameter("usuario");
	String contrasena = request.getParameter("contrasena");
	String contrasena2 = request.getParameter("contrasena2");
	String pais = request.getParameter("pais");
	String tecnologia = request.getParameter("tecnologia");
	
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/registro_jsp","root","");
		
		if(contrasena.equals(contrasena2)){
			Statement mistatement = conexion.createStatement();
			String instruccionSql = "INSERT INTO usuarios (nombre, apellido, usuario, contrasena, pais, tecnologia) VALUES"
									+"('"+ nombre +"','"+ apellido +"','"+ usuario +"','"+ contrasena +"','"+ pais +"','"+ tecnologia +"')";
			mistatement.executeUpdate(instruccionSql);
			out.println("Registrado con éxito");
			conexion.close();
		}else {
			out.println("Las contraseñas no son iguales!");
		}
				
	}catch(Exception e){
		System.out.println(e);
	} 
	

%>

</body>
</html>