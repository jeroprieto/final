class ReviewsController < ApplicationController

  def create
    Review.create("user_id" => params["cookies_id"],
    							"trip_id" => params["trip_id"],
                  "rating" => params["rating"],
                  "content" => params["content"])
    redirect_to "/trip/#{params["trip_id"]}", :notice => "Thanks for your review!"

  end


end