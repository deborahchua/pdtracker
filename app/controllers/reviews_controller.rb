class ReviewsController < ApplicationController
def index
    @objective = Objective.find(params[:objective_id])
    @reviews = @objective.reviews.all
end

def show
  @objective = Objective.find(params[:objective_id])
  @review = @objective.reviews.find(params[:id])
end

def create
  @objective = Objective.find(params[:objective_id])
  @review = @objective.reviews.create(review_params)
  redirect_to objective_path(@objective)
end

def edit
  @objective = Objective.find(params[:objective_id])
  @review = @objective.reviews.find(params[:id])

end

def destroy
  @objective = Objective.find(params[:objective_id])
  @review = @objective.reviews.find(params[:id])
  @review.destroy

  redirect_to objectives_path(@objective)
end

def update
@objective = Objective.find(params[:objective_id])
 @review = @objective.reviews.find(params[:id])

  if @review.update(review_params)
    redirect_to objectives_path
  else
    render 'edit'
  end
end

private
  def review_params
    params.require(:review).permit(:question, :comment, :confidence_level, :completed)
  end
end
