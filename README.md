# Beer Tasting README

### Description
Our web application allows registered users to save beers that they try and post their opinions about the beers. 


Team members: Ashley Baird, Brian Johnson, Thomas Kolasa, David Wightman, & Anthony Zhu


The application uses Ruby on Rails and the <a href="http://www.brewerydb.com/developers">BreweryDB API</a>.


https://trello.com/wdiproject3 (private)

### Artifacts
#### User Stories
A user will be able to log in, look up beers, save beers to her account, and make comments about each beer. She can also delete any of her beers or her comments. Users can view other users' saved beers and comments.

#### Front-end Wireframes

![](https://github.com/zhua1989/beerForumApp/blob/master/wire_frames.png)

#### Routes

| HTTP Verb  | Path            | Controller#Action | Used for              |
| ---------- | --------------- | ----------------- | --------------------- |
| **Sessions**                                                             |
| Get        | /sessions/new   | sessions#new      | form for login        |
| Post       | /sessions       | sessions#create   | create session        |
| DELETE     | /sessions/:id   | sessions#destroy  | logout of session     |
| **Users**                                                                |
| GET        | /users          | users#index       | displays users        |
| GET        | /users/new      | users#new         | form for adding user  |
| POST       | /users          | users#create      | create new user       |
| GET        | /users/:id      | users#show        | display specific user |
| GET        | /users/:id/edit | users#edit        | form for editing user |
| PUT        | /users/:id      | users#update      | update a user         |
| DELETE     | /users/:id      | users#destroy     | delete a user         |
| **Search**                                                               |
| GET        | /search         | search#index      | search API            |
| **Beers**                                                                |
| GET        | /beers          | beers#index       | displays beers        |
| GET        | /beers/new      | beers#new         | form for adding beer  |
| POST       | /beers          | beers#create      | create new beer       |
| GET        | /beers/:id      | beers#show        | display specific beer |
| DELETE     | /beers/:id      | beers#destroy     | delete a beer         |


#### Database Design (ERD/Data Model Diagrams)

![](https://github.com/zhua1989/beerForumApp/blob/master/Database_Design.jpg)

