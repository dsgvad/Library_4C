  # Library Management API Documentation

The Library Management API, built with PHP and the Slim framework, provides a secure and efficient backend for handling library resources, including users, authors, and books. This API uses JSON Web Tokens (JWT) for secure user authentication and token management. It supports a range of functions necessary for managing library data and ensures controlled access to resources.
## Key Features

- **User Management**  
  - Allows for user registration, authentication, profile viewing, updates, and account deletion.

- **Author Management**  
  - Supports author registration, viewing, updating, and deletion of author records.

- **Book Management**  
  - Provides endpoints to register, view, update, and delete book records.
  
- **Token Management**  
  - Generates single-use tokens for secure access control, ensuring safe authentication practices.s

## 1. Create User

- **Endpoint:** `localhost/library-main/public/user/register`
- **Method:** `POST`
- **Description:** Registers a new user in the system with a username and password.

#### Request Payload
```bash
{
  "username": "Eflores",
  "password": "123"
}
```
##### Success message
```bash {
  "status": "success added username Eflores",
  "data": null
}
 ```

## 2. Authenticate User

- **Endpoint:** `localhost/library-main/public/user/auth`
- **Method:** `POST`
- **Description:**  Authenticates an existing user, returning a JWT token upon successful login.

##### Request Payload

```json
{
  "username": "Eflores",
  "password": "123"
}
```

##### Success message
```json
{
  "status": "successfully generated for username Eflores",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzMDIsImV4cCI6MTczMDM4MTEwMiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.WJJhtHyCJX2o8r-WDNYwuDbQl6S3eUbIySDc5qHIDcY",
  "data": null
}
 ```

## 3. Show User

- **Endpoint:** `localhost/library-main/public/user/show`
- **Method:** `GET`
- **Description:** Retrieves the authenticated user’s profile information. Requires a valid JWT token.

##### Request Headers

```json
{
  "Authorization": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzMDIsImV4cCI6MTczMDM4MTEwMiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.WJJhtHyCJX2o8r-WDNYwuDbQl6S3eUbIySDc5qHIDcY"
}
```
##### Success message
```json
{
  "status": "Here is the list",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzMjgsImV4cCI6MTczMDM4MTEyOCwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.ceBdiG7QvBH851ivQdvmJcu1vX_4ZXWFBcB1xms_7rM",
  "data": [
    {
      "user_id": 23,
      "username": "Eflores"
    }
  ]
}
 ```

## 4. Update User

- **Endpoint:** `localhost/library-main/public/user/update`
- **Method:** `PUT`
- **Description:** Updates the profile information of an existing user.

##### Request Headers

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzMjgsImV4cCI6MTczMDM4MTEyOCwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.ceBdiG7QvBH851ivQdvmJcu1vX_4ZXWFBcB1xms_7rM",
  "user_id": "23",
  "username": "Eflores",
  "password": "123"
}
```
##### Success message
```json
{
  "status": "successfully updated for user Eflores",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzNDcsImV4cCI6MTczMDM4MTE0NywiZGF0YSI6eyJ1c2VyX2lkIjoyM319.CDqtrlLxmUDghl5YhC716av5XQxDq3adLkn36hFpGZQ",
  "data": null
}
 ```

## 5. Author Registration

- **Endpoint:** `localhost/library-main/public/author/register`
- **Method:** `POST`
- **Description:** Registers a new author in the library system.

##### Request Payload

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzNDcsImV4cCI6MTczMDM4MTE0NywiZGF0YSI6eyJ1c2VyX2lkIjoyM319.CDqtrlLxmUDghl5YhC716av5XQxDq3adLkn36hFpGZQ",
  "name": "teryang"
}
```
##### Success message
```json
{
  "status": "successfully registered teryang",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzNzIsImV4cCI6MTczMDM4MTE3MiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.JmrsQUyWWt_P6lDEYpgTPZ5_mVsGFGQ7cKvjgPBIzOc",
  "data": null
}
 ```
## 6. Show Authors

- **Endpoint:** `localhost/library-main/public/author/show`
- **Method:** `GET`
- **Description:** Returns a list of authors available in the library. Requires a valid JWT token.

##### Request Headers

```json
{
  "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzNzIsImV4cCI6MTczMDM4MTE3MiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.JmrsQUyWWt_P6lDEYpgTPZ5_mVsGFGQ7cKvjgPBIzOc"
}
```
##### Success message
```json
{
  "status": "Succesfully load the list",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzODYsImV4cCI6MTczMDM4MTE4NiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.iy5SHIJmtWzx1qDkm2kyTmjomXP6j-WLgtK20mIJkXU",
  "data": [
    {
      "author_id": 19,
      "name": "teryang"
    }
  ]
}
 ```

### 7. Delete Author

- **Endpoint:** `localhost/library-main/public/author/delete`
- **Method:** `DEL`
- **Description:**  Deletes an author from the library.

##### Request Headers

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzkzODYsImV4cCI6MTczMDM4MTE4NiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.iy5SHIJmtWzx1qDkm2kyTmjomXP6j-WLgtK20mIJkXU",
  "author_id": "17"
}
```
##### Success message
```json
{
  "status": "successfully deleted",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0MDYsImV4cCI6MTczMDM4MTIwNiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.52ngr2DXmnOCC6W0JbArnzcmYhBRp-OmzUvOv5d8oqs",
  "data": null
}
 ```
## 8. Register Book

- **Endpoint:** `localhost/library-main/public/book/register`
- **Method:** `POST`
- **Description:** Adds a new book to the library system, associating it with an author by ID.

##### Request Payload

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0MDYsImV4cCI6MTczMDM4MTIwNiwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.52ngr2DXmnOCC6W0JbArnzcmYhBRp-OmzUvOv5d8oqs",
  "title": "the nun",
  "author_id": "5"
}
```
##### Success message
```json
{
  "status": "successfully added the nun with author number 5",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0MzgsImV4cCI6MTczMDM4MTIzOCwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.4UVwYSR1DH_rRMimrt7Nwt_KYunCvntpptylYip537Y",
  "data": null
}
 ```
## 9. Show Books

- **Endpoint:** `localhost/library-main/public/book/show`
- **Method:** `GET`
- **Description:** Adds a new book to the library system, associating it with an author by ID.

##### Request Headers

```json
{
  "Authorization": "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0MzgsImV4cCI6MTczMDM4MTIzOCwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.4UVwYSR1DH_rRMimrt7Nwt_KYunCvntpptylYip537Y"
}

```
##### Success message
```json
{
  "status": "success here are the list",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0NjMsImV4cCI6MTczMDM4MTI2MywiZGF0YSI6eyJ1c2VyX2lkIjoyM319.ZuQ1-SHmnHKnI6NAZAOWtNEIcfHBRLtQazxi86dh1Ho",
  "data": [
    {
      "book_id": 22,
      "title": "the nun",
      "author_id": 5
    }
  ]
}
 ```
## 10. SUpdate Book

- **Endpoint:** `localhost/library-main/public/book/update`
- **Method:** `PUT`
- **Description:** Updates details for an existing book in the library system.

##### Request Payload

```json
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0NjMsImV4cCI6MTczMDM4MTI2MywiZGF0YSI6eyJ1c2VyX2lkIjoyM319.ZuQ1-SHmnHKnI6NAZAOWtNEIcfHBRLtQazxi86dh1Ho",
  "book_id": 21,
  "title": "the nun",
  "author_id": 5
}
```
##### Success message
```json
{
  "status": "successfully updated to the nun with book 21 and author id 5",
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vbGlicmFyeS5vcmciLCJhdWQiOiJodHRwOi8vbGlicmFyeS5jb20iLCJpYXQiOjE3MzAzNzk0ODksImV4cCI6MTczMDM4MTI4OSwiZGF0YSI6eyJ1c2VyX2lkIjoyM319.WU7FY4mjFb7mwyAVWXSKgxyXhZeObB52hVEq4pBg6O0",
  "data": null
}
 ```
## Owner
```jsonjson
This projects owner is ELMER JR. FLORES
```
