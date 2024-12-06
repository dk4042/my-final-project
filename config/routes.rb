Rails.application.routes.draw do
  devise_for :users
  root "home#homepage"

  get("/coffee_reviews", { :controller => "coffee", :action => "reviews" })

  get("/coffee_reviews/:the_id", { :controller => "coffee", :action => "show" })
  post("/insert_review", { :controller => "coffee", :action => "create" } )

  get("/delete_review/:the_id", { :controller => "coffee", :action => "destroy" }  )
  post("/modify_review/:the_id", { :controller => "coffee", :action => "update" } )

  get("/random_review", { :controller => "coffee", :action => "random" })
  
  get("/feedback", { :controller => "coffee", :action => "feedback" })
  post("insert_feedback",  { :controller => "coffee", :action => "submit" } )
end
