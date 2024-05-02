require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  @my_move = "rock"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  if @comp_move == "rock"
    @outcome = "tied"
  elsif @comp_move == "paper"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/scissors") do
  @my_move = "scissors"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  if @comp_move == "scissors"
    @outcome = "tied"
  elsif @comp_move == "rock"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end

get("/paper") do
  @my_move = "paper"
  moves = ["rock", "paper", "scissors"]
  @comp_move = moves.sample
  if @comp_move == "paper"
    @outcome = "tied"
  elsif @comp_move == "scissors"
    @outcome = "lost"
  else
    @outcome = "won"
  end
  erb(:rock)
end
