# Web_Succulent

This project is an Ant-based Java web application that can allow admin can sell and the customer can buy. Users can browse, view details, add to cart, and purchase succulent.

## Highlight

- **Web bán cây online**: Explore a variety of succulent, manage your cart, search for your tree, and complete purchases.
- **Comprehensive CRUD Operations**: Efficiently manage users, orders, carts, and products.
- **Tech Stack**: Servlet, JSP, Bootstrap 5, HTML, CSS, JavaScript, and Microsoft SQL Server.

*Note: This is a private project and not intended for public use.*

## Features

### Login

![Homepage showcasing ](./image/login.png)

Login page allow guest join to website

### Register

![Homepage showcasing ](./image/register.png)

Register page allow guest sign up the account

### HomePage

![Homepage showcasing ](./image/homepage.png)
![Homepage showcasing ](./image/homepage2.png)

The homepage features show the information about this website.

#### View Shopping 

![Shopping](./image/shopping.png)
![Shopping](./image/shopping2.png)

The shopping show the list of succulent, customer can see overview or see detail 

### View Album Succulent

![View Album Succulent](./image/album.png)
![View Album Succulent](./image/album2.png)

Customer can see the list about the succulent

### View Succulent Detail
![View Succulent Detail](./image/albumDetail.png)

Customer can see the detail about the succulent, how to grow, meaning ... 

Make sure you have the following installed:

### Java Environment

- [Java Development Kit](https://www.oracle.com/java/technologies/downloads) (I used JDK 17)
- [Apache Tomcat](https://tomcat.apache.org/download-11.cgi) (I used Tomcat 11)
- [Apache Ant](https://ant.apache.org/bindownload.cgi) (I used Ant 1.10.14)

### Microsoft SQL Server

- [Microsoft SQL Server](https://www.microsoft.com/en-us/sql-server/sql-server-downloads) (I used SQL Server 2022 Developer)
- [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms) (I used SSMS 20.1)

*Note: When setting up SSMS, set the username and password to `sa` and `123` to match the project's configuration.*

### Development Environment

- **IDE**: [Visual Studio Code](https://code.visualstudio.com/download)
- **Extension**: [Community Server Connector](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-community-server-connector) (for connecting to Tomcat)

*Note: To add Tomcat, use the command palette (Ctrl+Shift+P) and type "Servers: Add Local Server."
Select "Tomcat" and choose the directory where Tomcat is installed (CATALINA_HOME).*

## Steps to Run

1. **Clone the repository**: Open the terminal and run
   ```bash
   git clone https://github.com/quocviet24/Project_Web_Succulent.git
   ```

2. **Run the SQL Script**: 
   Open `Succulent.sql` in SSMS and execute it to set up the database schema and initial data.

3. **Start the Tomcat Server**: 
   In the "SERVERS" view on the left of VS Code, right-click on the Tomcat instance and select "Start."

4. **Build and Deploy the Project**: 
   Open the terminal in the project directory and run
   ```bash
   ant run
   ```

5. **Access the Application**: 
   Open your web browser and navigate to `http://localhost:8080` (or your pre-configured port) to use the application.

## License

This project is currently a private project and is not licensed for public use. All rights are reserved by the project owner.

## References

- [Themewagon's Fruitable template](https://themewagon.com/themes/fruitables-free/): Bootstrap 5 template used in this project.
- [How to write a README](https://github.com/banesullivan/README): Helpful instructions on crafting a good README.
