require 'spec_helper'
require 'rails_helper'


require_relative "../../../../app/models/Category"
require_relative "../../../../app/concepts/Category/operations/create"

  RSpec.describe Category::Operations::Create do
    let (:pass_params) { { Category: { name: "medicine" } } }
    let (:pass_without_params) { { Category: {  } } }

    it "failes with missing inputs" do

      result = Category::Operations::Create.(pass_without_params)
      expect(result).to be_failure

    end

    it "works with correct Category name" do

      result = Category::Operations::Create.(pass_params)
      expect(result).to be_success

    end

  end

  RSpec.describe Category::Operations::Show do
    let (:pass_params) {  { id: 200 }  }

    it "works if id exsist" do

      result = Category::Operations::Show.(pass_params)

      expect(result).to be_failure

    end
  end

