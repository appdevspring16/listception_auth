# Listception Auth

## Setup

1. Clone this repository down to your computer.
1. In the GitHub app, create a new branch for your work.
1. Open the entire folder you downloaded in Atom.
1. Add the [starter_generators gem](https://gist.github.com/raghubetina/80d3cf2cf82666ed1c0f) to the Gemfile.
1. `bundle install`
1. `rails server`
1. Navigate to [http://localhost:3000](http://localhost:3000) and verify that it welcomes you aboard.
1. Open up a new Terminal tab or window and `cd` back to the application's root folder to run additional commands.
1. As we work, you can see [the solution for each step in granular detail here](https://github.com/appdevspring-16/listception_auth_solutions/commits/heroku?page=2).
1. If you haven't already, it might be helpful to install the Atom packages `rails-snippets` and `atom-bootstrap3`. Furthermore, uninstall or disable the package `emmet`.

### [Here is our target.](https://listception-auth-target.herokuapp.com)

#### You can sign in with username `alice@example.com` or `bob@example.com` and password `123456`.

## Create initial models

Suppose we have the following Domain Model:

 - Boards have a name and belong to a user (we won't add users yet, but we will soon).
 - Lists have a name and belong to a board.
 - Cards have a name, a description, and belong to a list.

```
┌──────────────────┐      ┌──────────────────┐      ┌──────────────────┐
│                  │      │                  │      │                  │
│Boards            │      │Lists             │      │Cards             │
│======            │     ╱│=====             │     ╱│=====             │
│                  │──────│                  │──────│                  │
│- name:string     │     ╲│- name:string     │     ╲│- name:string     │
│                  │      │                  │      │- description:text│
│                  │      │                  │      │                  │
└──────────────────┘      └──────────────────┘      └──────────────────┘
         ╲│╱                                                            
          │                                                             
          │                                                             
          │                                                             
┌────────────────────────┐                                                 
│                        │                                                 
│Users                   │                                                 
│=====                   │                                                 
│- authentication columns│                                                 
│(email, password, etc)  │                                                 
│                        │                                                 
│                        │                                                 
└────────────────────────┘                                                 
```

Let's generate our resources:

```
rails g starter:resource board user_id:integer name:string
rails g starter:resource list board_id:integer name:string
rails g starter:resource card list_id:integer name:string description:text
```

Execute the generated instructions to create the three tables:

```
rake db:migrate
```

Navigate to [http://localhost:3000/boards](http://localhost:3000/boards), [http://localhost:3000/lists](http://localhost:3000/lists), and  [http://localhost:3000/cards](http://localhost:3000/cards) and verify that the Golden Seven were generated correctly for each one.

Overwrite the out-of-the-box application layout file with a Bootstrapped application layout file:

```
rails g starter:style paper
```

(You can substitute whichever [Bootswatch](http://bootswatch.com/) you prefer for `paper`, or just use `default` for vanilla Bootstrap.)

Pre-populate the tables with some data:

```
rake db:seed
```
