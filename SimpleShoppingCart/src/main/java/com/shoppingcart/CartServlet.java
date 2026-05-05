package com.shoppingcart;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * Handles POST requests from the product listing page.
     * Adds the selected product to the user's session-based shopping cart.
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve product name parameter from the form submission
        String product = request.getParameter("product");
        
        // Input validation: ensure product name is provided
        if (product != null && !product.isEmpty()) {
            // Get current session or create one if it doesn't exist
            // This maintains the state of the cart across different requests
            HttpSession session = request.getSession();
            
            // Retrieve the cart List from the session attribute "cart"
            @SuppressWarnings("unchecked")
            List<String> cart = (List<String>) session.getAttribute("cart");
            
            // If no cart exists in the session (first time adding an item),
            // create a new ArrayList and store it.
            if (cart == null) {
                cart = new ArrayList<>();
            }
            
            // Add the received product name to the cart list
            cart.add(product);
            
            // Save the updated cart list back into the session
            session.setAttribute("cart", cart);
        }
        
        // Redirect the user to the cart display page (cart.jsp)
        // Redirecting is preferred over forwarding to prevent duplicate submissions on refresh
        response.sendRedirect("cart.jsp");
    }

    /**
     * Handles GET requests by redirecting to the main product page.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Redirect to index.html if someone tries to access this servlet via URL/GET
        response.sendRedirect("index.html");
    }
}
