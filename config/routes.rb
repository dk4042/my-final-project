Rails.application.routes.draw do

  get("/", { :controller => "coffee", :action => "homepage" })

  get("/coffee_reviews", { :controller => "coffee", :action => "reviews" })

  get("/coffee_reviews/:the_id", { :controller => "coffee", :action => "show" })
  post("/insert_review", { :controller => "coffee", :action => "create" } )

  get("/delete_review/:the_id", { :controller => "coffee", :action => "destroy" }  )
  post("/modify_review/:the_id", { :controller => "coffee", :action => "update" } )
  
end
