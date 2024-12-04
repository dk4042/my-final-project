class CoffeeController < ApplicationController
  def homepage
    render({ :template => "home_templates/home"})
  end

  def create
    a = Review.new
    a.name = params.fetch("the_name")
    a.region = params.fetch("the_region")
    a.review = params.fetch("the_review")
    a.image = params.fetch("the_image")
   
    a.save

    redirect_to("/coffee_reviews")
  end 

  def reviews
    matching_reviews = Review.all
    @list_of_reviews = matching_reviews.order({ :created_at => :desc })
    render({ :template => "reviews_templates/reviews"})
  end

end
