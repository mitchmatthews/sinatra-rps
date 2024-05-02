require "sinatra"
require "sinatra/reloader"

get("/") do
  <<~HTML
  <body>
    <div>
      <a href="/rock">
        Play Rock
      </a>
    </div>

    <div>
      <a href="/paper">
        Play Paper
      </a>
    </div>

    <div>
      <a href="/scissors">
        Play Scissors
      </a>
    </div>
    <h1>
      Welcome to Rock-Paper-Scissors!
    </h1>
  </body>
  HTML
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
