Dice::Application.routes.draw do

 get("/dice", { :controller => "dice", :action => "show_die"})
 get("/dice", { :controller => "dice", :action => "die_roll"})
 get("/dice", { :controller => "dice", :action => "starting_roll"})
 get("/dice", { :controller => "dice", :action => "repeating_roll"})
 get("/dice", { :controller => "dice", :action => "win_game"})
 get("/dice", { :controller => "dice", :action => "lose_game"})


end
