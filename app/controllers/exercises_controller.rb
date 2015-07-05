class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find_by(id: params[:id])
  end

  def create
    @exercise = Exercise.create(name: params[:name], instruction: params[:instruction], muscle: params[:muscle], level: params[:level], equipment: params[:equipment])
    render :show
  end

  def update
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.update = Exercise.create(name: params[:name], instruction: params[:instruction], muscle: params[:muscle], level: params[:level], equipment: params[:equipment])
    render :show
  end

  def destroy
    @exercise = Exercise.find_by(id: params[:id])
    @exercise.destroy
    render nothing: true
  end
end
