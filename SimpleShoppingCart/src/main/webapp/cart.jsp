<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart | Modern Store</title>
    <style>
        :root {
            --primary: #2563eb;
            --primary-hover: #1d4ed8;
            --bg: #f8fafc;
            --text: #1e293b;
            --text-light: #64748b;
            --card-bg: #ffffff;
            --border: #e2e8f0;
            --shadow: 0 4px 6px -1px rgb(0 0 0 / 0.1), 0 2px 4px -2px rgb(0 0 0 / 0.1);
        }

        * { box-sizing: border-box; margin: 0; padding: 0; }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background-color: var(--bg);
            color: var(--text);
            line-height: 1.5;
            padding: 2rem;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
        }

        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            padding-bottom: 1rem;
            border-bottom: 2px solid var(--border);
        }

        h1 { font-size: 1.875rem; font-weight: 700; color: var(--text); }

        .cart-card {
            background: var(--card-bg);
            border: 1px solid var(--border);
            border-radius: 1rem;
            padding: 2rem;
            box-shadow: var(--shadow);
        }

        .cart-list {
            list-style: none;
            margin-bottom: 2rem;
        }

        .cart-item {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1rem 0;
            border-bottom: 1px solid var(--border);
        }

        .cart-item:last-child { border-bottom: none; }

        .item-name { font-weight: 500; font-size: 1.125rem; }

        .cart-summary {
            background-color: var(--bg);
            padding: 1.25rem;
            border-radius: 0.75rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        .total-label { color: var(--text-light); font-weight: 500; }
        .total-count { font-size: 1.5rem; font-weight: 700; color: var(--primary); }

        .empty-state {
            text-align: center;
            padding: 3rem 0;
            color: var(--text-light);
        }

        .back-link {
            display: block;
            text-align: center;
            color: var(--primary);
            text-decoration: none;
            font-weight: 600;
            transition: color 0.2s;
        }

        .back-link:hover { color: var(--primary-hover); text-decoration: underline; }

        @media (max-width: 640px) {
            body { padding: 1rem; }
        }
    </style>
</head>
<body>
    <div class="container">
        <header>
            <h1>Shopping Cart</h1>
        </header>
        
        <div class="cart-card">
            <%
                // Retrieve the cart list from the session
                List<String> cart = (List<String>) session.getAttribute("cart");
                
                if (cart == null || cart.isEmpty()) {
            %>
                <div class="empty-state">
                    <p style="font-size: 3rem; margin-bottom: 1rem;">🛒</p>
                    <p>Your shopping cart is currently empty.</p>
                </div>
            <%
                } else {
            %>
                <ul class="cart-list">
                    <% 
                        for (String item : cart) { 
                    %>
                        <li class="cart-item">
                            <span class="item-name"><%= item %></span>
                            <span style="color: var(--text-light); font-size: 0.875rem;">1 Unit</span>
                        </li>
                    <% 
                        } 
                    %>
                </ul>
                
                <div class="cart-summary">
                    <span class="total-label">Total Items in Cart</span>
                    <span class="total-count"><%= cart.size() %></span>
                </div>
            <%
                }
            %>

            <a href="index.html" class="back-link">← Continue Shopping</a>
        </div>
    </div>
</body>
</html>
