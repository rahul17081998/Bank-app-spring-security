# Bank-app-spring-security
For springsecsection9

API Authentication and User Access Guide

This guide explains how to register a user, log in to obtain a JWT token, and use that token to access protected resources.

Prerequisites
•	Ensure the application is running on http://localhost:8080.
•	You have access to a valid session, which can be obtained from the server after the first request (JSESSIONID).

1. User Registration

To register a new user, use the following cURL command. This will create a user with the name Sonam, email sonam@example.com, and the role ADMIN.

curl --location 'http://localhost:8080/register' \
--header 'Content-Type: application/json' \
--header 'Cookie: JSESSIONID=A5C62BD801E5F60C8C3EBADD4A88FE67' \
--data-raw '{
"name": "Sonam",
"email": "sonam@example.com",
"mobileNumber": "9340486876",
"pwd": "sonam@12345",
"role": "ADMIN"
}'


2. User Login

After registration, use the following cURL command to log in. Replace the Authorization header with the base64 encoded version of the email and password (e.g., base64(sonam@example.com:sonam@12345)).


curl --location 'http://localhost:8080/user' \
--header 'Authorization: Basic <Base64_encoded_email_and_password>' \
--header 'Cookie: JSESSIONID=A5C62BD801E5F60C8C3EBADD4A88FE67'

Example:

For the above example, if you base64 encode sonam@example.com:sonam@12345, you would use the following in the Authorization header:

--header 'Authorization: Basic c29uYW1AZXhhbXBsZS5jb206c29uYW1AMTIzNDU='


3. Accessing Protected Resources

Once you have the JWT token from the login response, you can use it to make requests to protected resources.

For example, to view account details for a user with id=14, use the following cURL command:

curl --location 'http://localhost:8080/myAccount?id=14' \
--header 'Authorization: <JWT_token_received_from_login>' \
--header 'Cookie: JSESSIONID=A5C62BD801E5F60C8C3EBADD4A88FE67'

Explanation:
•	Authorization: Replace <JWT_token_received_from_login> with the actual JWT token received from the login step.
•	id=14: This specifies the user account ID for which you want to view the details.

By following these steps, you can successfully register a user, log in to obtain a JWT token, and access protected resources in your application. Make sure to always include the Authorization header with the JWT token in all subsequent requests to protected APIs.
