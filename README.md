# Welcome to the Web

## Ruby gems in use:
* Sinatra - A DSL (domain specific language) for quickly building web applications in Ruby
* Shotgun - Automatically reloads my entire application on every request, rather than me having to stop and start Sinatra every time I change my code in app.rb.


## To address **separation of concerns**
* Separate our Ruby and HTML code by modularising our code into a **View**
* app.rb will be for routing and we will use views/index.erb for our presentation (or view) concerns.

# app.rb
```
require 'sinatra'
set :session_secret, 'super secret'
get '/cat' do # - accessed via 'http://localhost:4567/cat'
  erb(:index)
end

```
# index.erb
```
"<div style='border: 4px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
</div> "

```
