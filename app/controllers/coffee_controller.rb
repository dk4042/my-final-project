class CoffeeController < ApplicationController


  def show
    the_id = params.fetch("the_id")

    matching_reviews = Review.where({ :id => the_id })
    @the_review = matching_reviews.at(0)

    render({ :template => "reviews_templates/show" })
  end

  def update 
    the_id = params.fetch("the_id")
    matching_records = Review.where({:id => the_id})
    the_review = matching_records.at(0)
  
    the_review.name = params.fetch("the_name")
    the_review.region = params.fetch("the_region")
    the_review.review = params.fetch("the_review")
    the_review.image = params.fetch("the_image")
    the_review.rank = params.fetch("the_rank")
  
    the_review.save
  
    redirect_to("/coffee_reviews")
  end

  def destroy
    the_id = params.fetch("the_id")
    matching_records = Review.where({ :id => the_id })
    the_review = matching_records.at(0)
    if the_review
      the_review.destroy
      redirect_to("/coffee_reviews")
    else
      redirect_to("/coffee_reviews", alert: "Review not found.")
    end
  end

  def create
    a = Review.new
    a.name = params.fetch("the_name")
    a.region = params.fetch("the_region")
    a.review = params.fetch("the_review")
    a.image = params.fetch("the_image")
    a.rank = params.fetch("the_rank")
   
    a.user_id = current_user.id
    a.save

    redirect_to("/coffee_reviews")
  end 

  def reviews
    matching_reviews = Review.all
    @list_of_reviews = matching_reviews.order({ :created_at => :desc })
    render({ :template => "reviews_templates/reviews"})
  end

  def random
    @review = Review.order("RANDOM()").first
    if @review
      render({ :template => "reviews_templates/random"}) 
    else
      render plain: "No reviews found", status: :not_found
    end
  end


end
