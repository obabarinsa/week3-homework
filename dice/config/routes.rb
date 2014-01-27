Dice::Application.routes.draw do


 get("/dice/roll", { :controller => "dice", :action => "state"})
 get("/dice/win", { :controller => "dice", :action => "win_game"})
 get("/dice/lose", { :controller => "dice", :action => "lose_game"})
 get("/dice", { :controller => "dice", :action => "index"})


end



