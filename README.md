# README
GET /signup
  - present signup form
  - users have an email

POST /users
  - create the user in database
  - validate

-----------

GET /login
  - present login form
POST /login
  - create their session and redirect

  1. tell them who they are logged in as
  2. build logout
  3. create protected page
  
GET /posts/new
  - present form to create a post

POST /post
  - save the post to db

-----------

GET /post
  - show all posts

GET /post/:id
  - show details of the post

PATCH /post/:id

-----------

Authentication / Passwords
  - add password confirmation

Profile
  - Show me my purchased items
  - Show me my sold items

Posts
  - Add description, category, and price to posts

Build shopping cart

Flash messages - flash[:alert] = "blabla"

