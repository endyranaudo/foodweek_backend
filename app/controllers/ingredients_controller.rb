class IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all
    render json: ingredients
  end

  def show
    ingredient = Ingredient.find_by(id: params[:id])
    if ingredient 
      render json: ingredient
    else
      render json: {error: 'Ingredient not found.'}, status: 404
    end
  end

end
