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


  def create 
    ingredient = Ingredient.new(name: params[:name])
    if ingredient.save
        render json: ingredient
    else
        render json: {error: "Item not valid."}, status: 400
    end
  end
  

  def destroy 
    ingredient = Ingredient.find_by(id: params[:id])
    ingredient.destroy
    render json: ingredient
  end 

end
