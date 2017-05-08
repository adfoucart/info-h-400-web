<%-- 
    Document   : index
    Created on : 22-nov.-2016, 10:18:28
    Author     : Administrateur
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="infoh400_20162017.Database"%>
<%@page import="infoh400_20162017.Patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    Database db = new Database();
    ArrayList<Patient> patients = db.getAllPatients();    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="style.css" />
        <title>My Patients</title>
    </head>
    <body>
        <h1>Patient List</h1>
        <form name="addPatient" action="addPatient.jsp" method="post">
            <label>Nom : <input type="text" name="nom" /></label><br />
            <label>Prénom : <input type="text" name="prenom" /></label><br />
            <label>Sexe : <select name="sexe"><option value="M">M</option><option value="F">F</option></select></label><br />
            <button type="submit" name="add" value="Ajouter">Ajouter</button>
        </form>
        <table id="patientList">
            <thead>
                <tr>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Sexe</th>
                </tr>
            </thead>
            <tbody>
                <%
                for(Patient p : patients){
                    %>
                    <tr>
                        <td><%=p.getNom()%></td>
                        <td><%=p.getPrenom()%></td>
                        <td><%=p.getSexe()%></td>
                    </tr>
                    <%
                }    
                %>
            </tbody>
        </table>
    </body>
</html>
