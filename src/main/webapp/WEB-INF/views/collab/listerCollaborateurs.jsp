<%@page import="java.util.List"%>
<%@page import="dev.sgp.entite.Collaborateur" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
  <title>SGP App</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
  <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
<body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"><img />logo</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="#">Collaborateurs <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Statistiques</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Activités</a>
      </li>
    </ul>
  </div>
  </nav>

  <div class="container border p-3">
  <div class="row">
    <div class="col-12">
      <button type="button" class="btn btn-outline-dark float-right" onclick="location.href = 'creer-collab.html';">
        Ajouter un nouveau collaborateur</button>
    </div>
  </div>
  <div class="input-group">
    <div class="container">
      <div class="row">
        <h2>Les collaborateurs</h2>
      </div>
      <div class="row">
        <div class="col-4 text-right"><label for="search">Rechercher un nom ou un prenom qui commence par : </label></div>
        <div class="col-3"><input type="search" class="form-control" id="search"></div>
        <div class="col-2"><button type="button" type="submit" id="searchButton">Chercher</button></div>
        <div class="col-3">
          <input type="checkbox" id="deactivatedCheck">
          <label for="deactivatedCheck">Voir les collaborateurs désactivés</label>
        </div>
      </div>
      <div class="row">
        <div class="col-4 text-right"><label for="inputGroupSelect">Filtrer par département : </label></div>
        <div class="col">
          <select class="custom-select" id="inputGroupSelect">
            <option selected>Tous</option>
            <option value="1">Comptabilité</option>
            <option value="2">Ressources Humaines</option>
            <option value="3">Informatique</option>
          </select>
        </div>
        <div class="col-3"></div>
      </div>
    </div>
  </div>
</div>

<div class="container">
  <div class="row">
<% List<Collaborateur> listeCollabs =(List<Collaborateur>)request.getAttribute("listeCollabs");
for (Collaborateur collab : listeCollabs) {
	String nom = collab.getNom();

%>
	<div class="col-lg-4 col-md-6 col-sm-12 mt-3">
      <div class="container">
        <div class="row border"><%= nom %> Prénom</div>
        <div class="row border">
          <div class="col-4 p-1"><img src="res/avatar_defaut.png" alt=""/></div>
          <div class="col-4">
            <div class="row">Fonction</div>
            <div class="row">Département</div>
            <div class="row">Email</div>
            <div class="row">Téléphone</div>
          </div>
          <div class="col-3">
            <div class="row">blablabla</div>
            <div class="row">blablabla</div>
            <div class="row">blablabla</div>
            <div class="row">blablabla</div>
            <div class="row">
              <button type="button" name="button" class="float-right">Editer</button>
            </div>
          </div>
        </div>
      </div>
    </div>
<%
}
%>
</div>
</div>
