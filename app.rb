require 'sinatra'
set :session_secret, 'super secret'

#1st route defined - that responds with a HTTP message containing "hello!"
get '/' do # - accessed via 'http://localhost:4567/'
  "Hello World!"
end

#2nd route defined
get '/secret' do
  "This is not really my secret :P"
end

#3rd route defined
get '/no3' do
  "This is number 3"
end

# We've created a web application that returns basic strings as responses to client requests.
# Most web applications don't return basic strings: they return advanced HTML documents,
# along with CSS (for styling), JavaScripts (for interaction effects), and other assets
# (like images, videos, and audio). Let's now return some HTML!
#4th route defined

get '/cat' do
  " <div style='border: medium dashed red'>
      <img src='http://bit.ly/1eze8aE'>
    </div>  "
end
