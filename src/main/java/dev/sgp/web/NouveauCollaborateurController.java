package dev.sgp.web;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.time.ZonedDateTime;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dev.sgp.entite.Collaborateur;
import dev.sgp.service.CollaborateurService;
import dev.sgp.util.Constantes;

public class NouveauCollaborateurController extends HttpServlet {
	
	String propFileName = "application.properties";
	private CollaborateurService collabService = Constantes.COLLAB_SERVICE;
	
	InputStream inputStream;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.getRequestDispatcher("/WEB-INF/views/collab/nouveauCollaborateur.jsp")
		.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Collaborateur collab = new Collaborateur(); 
		
		Properties prop = new Properties();
		
		inputStream = getClass().getClassLoader().getResourceAsStream(propFileName);
		if (inputStream != null) {
			prop.load(inputStream);
		} else {
			throw new FileNotFoundException("property file '" + propFileName + "' not found in the classpath");
		}		
		
//		collab.setMatricule(nextMatricule());
		collab.setDateHeureCreation(ZonedDateTime.now());
		collab.setEmailPro(req.getParameter("firstName")+ "." + req.getParameter("name") + "@" + prop.getProperty("domain"));
		collab.setNom(req.getParameter("name"));
		collab.setPrenom(req.getParameter("firstName"));
//		collab.setDateDeNaissance((LocalDate));
		collab.setAdresse(req.getParameter("address"));
		collab.setNumeroDeSecuriteSociale(req.getParameter("ssn"));
		collab.setActif(true);
		collab.setPhoto(prop.getProperty("defaultPicture"));
		
		collabService.sauvegarderCollaborateur(collab);
		
		resp.sendRedirect("/sgp/collaborateurs/lister");		
	}
		
}
