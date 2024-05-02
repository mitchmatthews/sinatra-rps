require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/rock") do
  moves = ["rock", "paper", "scissors"]
  
  @comp_move = moves.sample
  
  if comp_move == "rock"
    @outcome = "tied"
  elsif comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  
  erb(:rock)
  
end

get("/scissors") do
  "This string will be sent as the body of the response"
end

get("/paper") do
  "This string will be sent as the body of the response"
end
