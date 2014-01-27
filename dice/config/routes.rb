Dice::Application.routes.draw do

  # get("/home", { :controller => "home", :action =>"welcome"})

  # get("/home/first_roll", { :controller => "home", :action =>"start_roll"})

  # get("/game/rolling", { :controller => "game", :action =>"repeat_roll"})

  # get("/game/game_over", { :controller => "game", :action =>"game_over" })


 #get("/dice", { :controller => "dice", :action => "show_die"})
 #get("/dice", { :controller => "dice", :action => "die_roll"})
 get("/dice/roll", { :controller => "dice", :action => "starting_roll"})
 get("/dice/win", { :controller => "dice", :action => "win_game"})
 get("/dice/lose", { :controller => "dice", :action => "lose_game"})
  get("/dice/repeat", { :controller => "dice", :action => "repeating_roll"})


 get("/dice", { :controller => "dice", :action => "index"})


end



