class ManufacturersController < ApplicationController

  def create

    params = { manufacturer: { name: "Cipla" } }
    result = Manufacturer::Operations::Create.(params)
    puts result.success?
    render json: "Manufacturer created"
  end

  def show
    render json: Manufacturer::Operations::Show.(params)["model"]
  end

end