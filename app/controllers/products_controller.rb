class ProductsController < ApplicationController
  def create

    #Product.create_with
    pass_params = { Product: params}
    result = Product::Operations::Create.(pass_params)
    #puts result.inspect
    if !result.success?
      render json: "Input Data is wrong"
    else
      render json: "Product created"
    end

  end
end