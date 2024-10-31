📚 Library Management API
This Library Management API, built using PHP with the Slim framework, allows for streamlined management of library resources, such as users, authors, and books. Utilizing JSON Web Tokens (JWT), it ensures secure user authentication and access control to keep the library system safe.

🌟 Features
User Management
Manage user accounts with registration, authentication, profile updates, and deletion.
Author Management
Support author-related actions: add, update, view, and remove author details.
Book Management
Provides endpoints to add, update, view, and delete book records.
Token Management
Secure, single-use tokens for each session, ensuring reliable authentication.
🛠️ API Endpoints
1. User Registration
URL: /user/register
Method: POST
Description: Registers a new user by username and password.
Request
json
Copy code
{
  "username": "username",
  "password": "password"
}
Response
json
Copy code
{
  "status": "User successfully registered: username",
  "data": null
}
2. User Authentication
URL: /user/auth
Method: POST
Description: Authenticates an existing user, returning a JWT token upon successful login.
Request
json
Copy code
{
  "username": "username",
  "password": "password"
}
Response
json
Copy code
{
  "status": "Authentication successful",
  "token": "your_jwt_token",
  "data": null
}
3. Retrieve User Profile
URL: /user/show
Method: GET
Description: Fetches user profile information for the authenticated user. Requires a valid token.
Headers
json
Copy code
{
  "Authorization": "Bearer your_jwt_token"
}
Response
json
Copy code
{
  "status": "User profile fetched",
  "data": {
    "user_id": 23,
    "username": "username"
  }
}
4. Update User
URL: /user/update
Method: PUT
Description: Updates a user’s profile information.
Headers
json
Copy code
{
  "Authorization": "Bearer your_jwt_token"
}
Request
json
Copy code
{
  "username": "new_username",
  "password": "new_password"
}
Response
json
Copy code
{
  "status": "User profile updated",
  "data": null
}
5. Author Management
Register Author
URL: /author/register
Method: POST
Description: Adds a new author to the system.
Request
json
Copy code
{
  "name": "author_name"
}
Response
json
Copy code
{
  "status": "Author successfully registered",
  "data": null
}
6. Book Management
Register Book
URL: /book/register
Method: POST
Description: Adds a new book with an associated author ID.
Request
json
Copy code
{
  "title": "book_title",
  "author_id": "author_id"
}
Response
json
Copy code
{
  "status": "Book successfully added",
  "data": null
}
🔒 Security & Authentication
This API uses JWT for secure authentication. A token is required for most endpoints, ensuring only authorized access to the library's resources. Tokens expire periodically to enhance security, necessitating re-authentication.

📜 License
This project is licensed under the MIT License.

👤 Author
Elmer Jr. Flores
