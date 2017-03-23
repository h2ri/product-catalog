
class CategoriesController < ApplicationController

  def create
    params = { Category: { name: "Medicine" } }
    result = Category::Operations::Create.(params)
    puts result.success?
    render json: "Category created"
  end

  def show
    render json: Category::Operations::Show.(params)["model"]
  end

end