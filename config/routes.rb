Rails.application.routes.draw do

  get("/", { :controller => "coffee", :action => "homepage" })

  get("/coffee_reviews", { :controller => "coffee", :action => "reviews" })
  post("/insert_review", { :controller => "coffee", :action => "create" } )
  
end
