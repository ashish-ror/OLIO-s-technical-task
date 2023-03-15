Ruby-On-Rails Coding Task in respone to https://tech.olioex.com/rails-coding-task.html

To get the Rails server running locally:

Clone this repo

bundle install to install all required dependencies

rails db:create to create the database

rails db:migrate to run migrations

rails s to start the local server

It could definitely be enhanced in a lot better way but done is most simple way possible as page load was required everytime to load content.

If the likes could be per user, we could send ajax request to increment(create) or redo(destroy) the likes in UI and save value in controller. Like could have its owm model(table) which can have attributes like count(integer) and liked_by(user_id). The page could be loaded just once and we could have check the fresh new feeds from a background worker job and append in the UI without page refresh.

Also in articles json, I could not access the image url as it's Olio private url. Other details can be added in UI as per requirements.
