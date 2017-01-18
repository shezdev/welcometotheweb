# Welcome to the Web

## Ruby gems in use:
* Sinatra - A DSL (domain specific language) for quickly building web applications in Ruby
* Shotgun - Automatically reloads my entire application on every request, rather than me having to stop and start Sinatra every time I change my code in app.rb.


## To address **separation of concerns**
* Separate our Ruby and HTML code by modularising our code into a **View**
* app.rb will be for routing and we will use views/index.erb for our presentation (or view) concerns.

##get example
### app.rb
```
get '/random-cat' do # - accessed via 'http://localhost:4567/cat'
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index) #This has to be last
end

```
### index.erb
```
<% if @random_name %>
  <h1>My name is <%= @random_name %></h1>
<% end %>
<div style='border: 4px dashed red'>
  <img src='http://bit.ly/1eze8aE'>
</div>"

```
##post example
### app.rb
```
get '/cat-form' do
  erb :cat_form
end

post '/named-cat' do
    p params
  @random_name = params[:name]
  erb :index
end

```
### cat_form.rb
```
<form action="/named-cat" method="post">
  <input type="text" name="name" />
  <input type="submit" value="Submit!" />
</form>


```
