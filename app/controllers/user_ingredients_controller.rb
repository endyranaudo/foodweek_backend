class UserIngredientsController < ApplicationController


  def index
    ingredients = UserIngredient.all
    render json: ingredients
  end


  def show
    userIngredient = UserIngredient.find_by(id: params[:id])
    if userIngredient 
      render json: userIngredient
    else
      render json: {error: 'Not found.'}, status: 404
    end
  end


  def create 
    userIngredient = UserIngredient.new(user_id: params[:user_id], ingredient_id: params[:ingredient_id])
    if userIngredient.save
        render json: userIngredient
    else
        render json: {error: "Item not valid."}, status: 400
    end
  end
  

  def destroy 
    userIngredient = UserIngredient.find_by(id: params[:id])
    userIngredient.destroy
    render json: userIngredient
  end 


end
