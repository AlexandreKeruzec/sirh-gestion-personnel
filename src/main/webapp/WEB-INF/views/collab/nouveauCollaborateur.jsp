<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

  <h1>Nouveau Collaborateur</h1>
  <form method="POST">
    <div class="input-group">
      <div class="container">
        <div class="row m-2">
          <div class="col-4"><label for="name">Nom</label></div>
          <div class="col-8"><input type="text" id="name" class="form-control" required="true"></div>
        </div>
        <div class="row m-2">
          <div class="col-4"><label for="firstName">Prenom</label></div>
          <div class="col-8"><input type="text" id="firstName" class="form-control" required="true"></div>
        </div>
        <div class="row m-2">
          <div class="col-4"><label for="birthdate">Date de naissance</label></div>
          <div class="col-8"><input type="text" id="birthdate" class="form-control" required="true"></div>
        </div>
        <div class="row m-2">
          <div class="col-4"><label for="address">Adresse</label></div>
          <div class="col-8"><textarea class="form-control" rows="3" id="address" required="true">
          </textarea></div>
        </div>
        <div class="row m-2">
          <div class="col-4"><label for="ssn">Numéro de sécurité sociale</label></div>
          <div class="col-8"><input type="text" id="ssn" class="form-control" required="true" minlength="15" maxlength="15"></div>
        </div>
        <div class="row m-2">
          <div class="col">
            <button type="submit" name="button" class="btn btn-primary float-right">Ajouter</button>
          </div>
        </div>
      </div>
    </div>
  </form>
</body>
