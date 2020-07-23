package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: show the registration form
        request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // TODO: ensure the submitted information is valid
        // TODO: create a new user based off of the submitted information
        // TODO: if a user was successfully created, send them to their profile
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");

        // check if username already exists
        request.setAttribute("username-exists", DaoFactory.getUsersDao().findByUsername(username));
        if (request.getAttribute("username-exists") != null) {
            // username already exists
            request.setAttribute("username-exists", true);
                    // My TODO: display a message - That username is not available
            request.getRequestDispatcher("/WEB-INF/register.jsp").forward(request, response);
            return;
        }

        boolean invalidRegistration = username.isEmpty()
                || email.isEmpty()
                || password.isEmpty()
                || (! password.equals(confirmPassword));

        if (invalidRegistration) {
            response.sendRedirect("/register");
            return;
        }

        User user = new User(username, email, password);
        DaoFactory.getUsersDao().insert(user);
        request.getSession().setAttribute("user", user);
        response.sendRedirect("/profile");
    }

}
