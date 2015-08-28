# Beer Tasting README

### Description
Our web application allows registered users to save beers that they try and post their opinions about the beers. 
Team members: Ashley Baird, Brian Johnson, Thomas Kolasa, David Wightman, & Anthony Zhu
The application uses Ruby on Rails and the BreweryDB API.
https://trello.com/wdiproject3 (private)

### Artifacts
#### User Stories
A user will be able to log in, look up beers, save beers to her account, and make comments about each beer. She can also delete any of her beers or her comments. Users can view other users' saved beers and comments.

#### Front-end Wireframes



#### Routes

| HTTP Verb  | Path            | Controller#Action | Used for              |
| ---------- | --------------- | ----------------- | --------------------- |
| GET        | /beers          | beers#index       | displays beers        |
| GET        | /beers/new      | beers#new         | form for adding beer  |
| POST       | /beers          | beers#create      | create new beer       |
| GET        | /beers/:id      | beers#show        | display specific beer |
| GET        | /beers/:id/edit | beers#edit        | form for editing beer |
| PUT        | /beers/:id      | beers#update      | update a beer         |
| DELETE     | /beers/:id      | beers#destroy     | delete a beer         |

(more routes)


#### Database Design (ERD/Data Model Diagrams)


