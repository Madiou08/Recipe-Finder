class RecipesController < ApplicationController
  def index
    @search_term = params[:looking_for] || 'Chocolate'
    @recipes = Recipe.for(@search_term)
  end
end
