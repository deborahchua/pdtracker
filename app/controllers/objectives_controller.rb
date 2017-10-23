class ObjectivesController < ApplicationController

  def index
    @objectives = Objective.all
  end

  def show
    @objective = Objective.find(params[:id])
    @reviews = @objective.reviews.all
  end

  def new
    @objective = Objective.new
  end

  def edit
    @objective = Objective.find(params[:id])
  end

  def create
    @objective = Objective.new(objective_params)

    if @objective.save
      redirect_to @objective
    else
      render 'new'
    end
  end

  def update
    @objective = Objective.find(params[:id])

    if @objective.update(objective_params)
      redirect_to @objective
    else
      render 'edit'
    end
  end

  def destroy
    @objective = Objective.find(params[:id])
    @objective.destroy

    redirect_to objectives_path
  end

  private

  def objective_params
    params.require(:objective).permit(:title, :description, :deadline)
  end
end
