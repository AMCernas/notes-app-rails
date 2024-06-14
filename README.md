# README

This is a simple notes application made using ruby on rails.

To run it just db:create/db:migrate. 
to add an admin user with the email: user@email.com and password: password123  and a user with name: user and num_user: 111111, run db:seed, or you can add both through console.

Admin can create users with statuses the statuses are watch and author, watch can only see posts and author can create, edit and delete posts.

The user can login through user_num this number is given to each user automatically when admin is creating a user.

And author users can create post with a title, description, and status.

* ruby version: 3.1.4
* rails version: 7.1.3.2

* gems used:
* devise
* action policy
