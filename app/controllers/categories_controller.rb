
class CategoriesController < ApplicationController

  def create
    params = { Category: { name: "Medicine" } }
    result = Category::Operations::Create.(params)
    puts result.success?
    render json: "Category created"
  end

  def show
    @medicine = Medicine::Operations::Create.({drug_form:"test", pack_form:"test", schedule:"test",
                                                is_h1:"true", is_chronic:"true",use_form:"test",
                                                use_form_head:"test",therapeutic:"test",product_id:"1" })
    puts @medicine.inspect
    render json: Category::Operations::Show.(params)["model"]
  end

end