class ReviewsController < ApplicationController
def index
    @objective = Objective.find(params[:objective_id])
    @reviews = @objective.reviews.all
end

def show
  @objective = Objective.find(params[:id])
  @reviews = @objective.reviews.all
end

def create
  @objective = Objective.find(params[:objective_id])
  @review = @objective.reviews.create(review_params)
  redirect_to objective_path(@objective)
end

private
  def review_params
    params.require(:review).permit(:question, :comment, :confidence_level, :completed)
  end
end
