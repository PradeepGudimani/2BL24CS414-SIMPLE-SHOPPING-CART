# Simple Shopping Cart
## Student Details
| Field | Details |
|---------------|----------------------------------|
| Name          | Pradeep kumar Gudimani           |
| USN           | 2BL24CS414                       |
| Branch        | Computer Science & Engineering   | 
| Semester      | VI Semester                      |
| Subject       |  Advanced Java Programming       |
| Problem No.   | Problem 24                       |

## Problem Statement
This is a Simple Shopping Cart application built using Java Servlets and JSP. The application provides an interface with 5 products where users can click "Add to Cart" for each. The backend maintains a list of these items within the user's session and displays them on a dedicated summary page along with the total item count.

## Technologies Used
- Java (Jakarta Servlet 6.0 / JSP 3.1)
- HTML5 & CSS3 (Modern, Responsive UI)
- Apache Tomcat 11
- Eclipse IDE

## How to Run This Project
1. Clone this repository or download the ZIP.
2. Import the project into Eclipse as a Dynamic Web Project.
3. Ensure you have Apache Tomcat (version 10 or 11) configured in Eclipse.
4. Right-click project → **Run As** → **Run on Server**.
5. Open your browser and go to: `http://localhost:8080/SimpleShoppingCart/index.html`

## Screenshots

### Input Form (Product Selection)

<img width="1920" height="1080" alt="Screenshot 1" src="https://github.com/user-attachments/assets/9438c634-99fd-4310-870c-63f07d98a58f" />


### Output / Result Page (Shopping Cart)
<img width="1920" height="1080" alt="Screenshot 2" src="https://github.com/user-attachments/assets/e34c813b-407a-4919-9004-75d51c580e16" />


## Servlet Concept Practiced
- **HttpSession**: Used to maintain the shopping cart state across multiple requests by storing an `ArrayList<String>` in the session.
- **doPost**: Implemented to securely handle the submission of product data from the HTML forms.
- **Jakarta EE Imports**: Utilized the `jakarta.servlet` namespace for compatibility with modern Tomcat environments.
- **JSP (JavaServer Pages)**: Used for dynamic rendering of the cart contents and total count.
