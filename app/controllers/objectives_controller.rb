class ObjectivesController < ApplicationController

  def index
    @objectives = Objective.all
  end

  def create
    @objective = Objective.new(objective_params)

    @objective.save
    redirect_to @objective
  end

  def show
    @objective = Objective.find(params[:id])
  end

  def new

  end

  def edit
  end

  def delete
  end

  private

  def objective_params
    params.require(:objective).permit(:title, :description, :deadline)
  end
end
