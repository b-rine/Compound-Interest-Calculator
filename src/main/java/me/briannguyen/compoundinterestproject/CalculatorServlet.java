package me.briannguyen.compoundinterestproject;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "me.briannguyen.compoundinterestproject.CalculatorServlet", urlPatterns = {"", "/"})
public class CalculatorServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String principalAmount = request.getParameter("principalAmount");
        String interestAmount = request.getParameter("interestRate");
        String years = request.getParameter("years");
        String timesCompounded = request.getParameter("timesCompounded");
        String error;

        if (principalAmount == null || interestAmount == null || years == null
                || timesCompounded == null || principalAmount.isBlank()
                || interestAmount.isBlank() || years.isBlank()
                || timesCompounded.isBlank()) {
            error = "One or more of the input boxes were blank. Try again.";
            request.setAttribute("error", error);
        } else {
            double result = Utils.calculateCompoundInterest(Double.parseDouble(principalAmount),
                    Double.parseDouble(interestAmount) / 100, Integer.parseInt(years),
                    Integer.parseInt(timesCompounded));
            request.setAttribute("result", "$" + result);
        }

        request.setAttribute("principal", principalAmount);
        request.setAttribute("interest", interestAmount);
        request.setAttribute("years", years);
        request.setAttribute("compounded", timesCompounded);

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);

    }
}