<%-- 
    Document   : addPatient
    Created on : 22-nov.-2016, 11:14:42
    Author     : Administrateur
--%>

<%@page import="infoh400_20162017.Database"%>
<%@page import="infoh400_20162017.Patient"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String nom = request.getParameter("nom");
    String prenom = request.getParameter("prenom");
    String sexe = request.getParameter("sexe");
    Patient p = new Patient(nom, prenom, Patient.Sexe.valueOf(sexe));
    
    Database db = new Database();
    String res = db.addPatient(p);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Patient added</title>
    </head>
    <body>
        <h1>Add patient</h1>
        <p><%=res%></p>
    </body>
</html>
