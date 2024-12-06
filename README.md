
#  Library Management API

This Library Management API, built using **PHP** with the **Slim framework**, allows for streamlined management of library resources, such as users, authors, and books. Utilizing **JSON Web Tokens (JWT)**, it ensures secure user authentication and access control to keep the library system safe.

---

##  Features
- **User Management**  
  Manage user accounts with registration, authentication, profile updates, and deletion.

- **Author Management**  
  Support author-related actions: add, update, view, and remove author details.

- **Book Management**  
  Provides endpoints to add, update, view, and delete book records.

- **Token Management**  
  Secure, single-use tokens for each session, ensuring reliable authentication.

---

##  API Endpoints

### User Endpoints

#### 1. Register User
- **Endpoint:** `POST /user/register`
- **Description:** Registers a new user in the system with a username and password.
  
##### Request:
```json
{
  "username": "Eflores",
  "password": "123"
}
```

##### Response:
```json
{
  "status": "success added username Eflores",
  "data": null
}
```

---

#### 2. Authenticate User
- **Endpoint:** `POST /user/auth`
- **Description:** Authenticates an existing user, returning a JWT token upon successful login.

##### Request:
```json
{
  "username": "Eflores",
  "password": "123"
}
```

##### Response:
```json
{
  "status": "successfully generated for username Eflores",
  "token": "<JWT_TOKEN>",
  "data": null
}
```

---

#### 3. Show User Profile
- **Endpoint:** `GET /user/show`
- **Description:** Retrieves the authenticated user’s profile information. Requires a valid JWT token.

##### Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Response:
```json
{
  "status": "Here is the list",
  "data": [
    {
      "user_id": 23,
      "username": "Eflores"
    }
  ]
}
```

---

#### 4. Update User Profile
- **Endpoint:** `PUT /user/update`
- **Description:** Updates the profile information of an existing user.

##### Request Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Request Body:
```json
{
  "user_id": 23,
  "username": "Eflores",
  "password": "123"
}
```

##### Response:
```json
{
  "status": "successfully updated for user Eflores",
  "data": null
}
```

---

### Author Endpoints

#### 1. Register Author
- **Endpoint:** `POST /author/register`
- **Description:** Registers a new author in the library system.

##### Request:
```json
{
  "name": "teryang"
}
```

##### Response:
```json
{
  "status": "successfully registered teryang",
  "data": null
}
```

---

#### 2. Show Authors
- **Endpoint:** `GET /author/show`
- **Description:** Returns a list of authors available in the library. Requires a valid JWT token.

##### Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Response:
```json
{
  "status": "Successfully loaded the list",
  "data": [
    {
      "author_id": 19,
      "name": "teryang"
    }
  ]
}
```

---

#### 3. Delete Author
- **Endpoint:** `DELETE /author/delete`
- **Description:** Deletes an author from the library.

##### Request Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Request Body:
```json
{
  "author_id": 17
}
```

##### Response:
```json
{
  "status": "successfully deleted",
  "data": null
}
```

---

### Book Endpoints

#### 1. Register Book
- **Endpoint:** `POST /book/register`
- **Description:** Adds a new book to the library system, associating it with an author by ID.

##### Request:
```json
{
  "title": "The Nun",
  "author_id": 5
}
```

##### Response:
```json
{
  "status": "successfully added The Nun with author ID 5",
  "data": null
}
```

---

#### 2. Show Books
- **Endpoint:** `GET /book/show`
- **Description:** Adds a new book to the library system, associating it with an author by ID.

##### Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Response:
```json
{
  "status": "success here is the list",
  "data": [
    {
      "book_id": 22,
      "title": "The Nun",
      "author_id": 5
    }
  ]
}
```

---

#### 3. Update Book
- **Endpoint:** `PUT /book/update`
- **Description:**Updates details for an existing book in the library system.

##### Request Headers:
```json
{
  "Authorization": "Bearer <JWT_TOKEN>"
}
```

##### Request Body:
```json
{
  "book_id": 21,
  "title": "The Nun",
  "author_id": 5
}
```

##### Response:
```json
{
  "status": "successfully updated The Nun with book ID 21 and author ID 5",
  "data": null
}
```

---

##  Security & Authentication
This API uses **JWT** for secure authentication. A token is required for most endpoints, ensuring only authorized access to the library's resources. Tokens expire periodically to enhance security, necessitating re-authentication.

---

##  Author
**Elmer Jr. Flores**
