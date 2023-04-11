class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes, include: :user , status: :created
    end

    def create
    end
    
    private

    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end
      
end

