package dev.sgp.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EditerCollaborateurControlleur extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws
	ServletException, IOException {
		resp.setContentType("text/html");
		String matricule = req.getParameter("matricule");
		if(matricule!=null){
			resp.setStatus(HttpServletResponse.SC_OK);
			resp.getWriter().print("<html><head><title>Edition de collaborateur</title></head>");
			resp.getWriter().print("<body>Matricule : " + matricule + "</body>");
			resp.getWriter().println("</html>");
        }
		else{
			resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Un matricule est attendu");
//			resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
//			resp.getWriter().print("<html><head><title>Error 400</title></head>");
//			resp.getWriter().print("<body>Un matricule est attendu</body>");
//			resp.getWriter().println("</html>");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String matricule = req.getParameter("matricule");
		String titre = req.getParameter("titre");
		String nom = req.getParameter("nom");
		String prenom = req.getParameter("prenom");
		if(matricule!=null && titre!=null && nom!=null && prenom!=null){
			resp.setStatus(HttpServletResponse.SC_CREATED);
			resp.getWriter().print("Creation d’un collaborateur avec les informations suivantes : ");
			resp.getWriter().print("matricule=" + matricule + ",titre=" + titre + ",nom=" + nom + ",prenom=" + prenom);
		}
		else{
			resp.setStatus(HttpServletResponse.SC_BAD_REQUEST);
			resp.getWriter().print("<html><head><title>Error 400</title></head>");
			resp.getWriter().print("<body>Les paramètres suivants sont incorrects : ");
			if(matricule==null){resp.getWriter().print("matricule ");}
			if(titre==null){resp.getWriter().print("titre ");}
			if(nom==null){resp.getWriter().print("nom ");}
			if(prenom==null){resp.getWriter().print("prenom");}
			resp.getWriter().println("</body></html>");
		}
	}
}
