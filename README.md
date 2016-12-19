#OH NO

Hogwarts has lost all its magic and now NOTHING WORKS!

## To Do:
You are part of Dumbledore's army. Correct all the errors so that this app runs properly.

## Bonus
Add functionality so students can enroll at Hogwarts (Creating a new student). You should implement a sorting hat method to randomly assign new students to one of Hogwarts' four houses. (Where do you think this logic should go?)


# Documenting Progress
1. Updated json gem to fix incompatability issue with Rails 5 (Dec 15)
2. Finally figured out how to solve the "PG::Connection Bad Fatal: role 'GA' does not exist" by creating a user called GA in psql (Dec 19)
* Created a hogwarts_development database through psql
*  Re-aligned the rails environment to match development, using 'rake db:migrate RAILS_ENV=development', as suggested by the error page
3. Changed routes from 'house' to 'houses' to match controller name
* Changed 'House' to 'Houses' in model
* Added '@' to houses in houses/index.html.erb
4. Managed to get the main page to render
* Involved reworking the seeds.rb to ensure it matches the schema
* Changing 'def' to 'class' in the Students model
* Altering the erb tags in the houses/index.html.erb to create links and images
