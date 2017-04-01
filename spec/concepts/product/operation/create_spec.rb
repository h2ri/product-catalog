require 'spec_helper'
require 'rails_helper'


require_relative "../../../../app/models/product"
require_relative "../../../../app/concepts/product/operations/create"

  RSpec.describe Product::Operations::Create do
    let (:pass_without_params) { { Product: { } } }
    let (:pass_params) { { Product: { name:"Crocin", manufacturer_id: 1, category_id:1, qty_per_pack:1,
                                                     brand:"test", is_banned:true, min_mrp:100, max_mrp:200,
                                                     is_refrigerated:false, created_by:1,is_verified:true } } }
    let (:pass_with_manufacture_and_category) { { Product: { name:"Okacet", manufacturer_id: 1, category_id:3 }  } }
    let (:pass_with_no_manufacture_and_category) { { Product: { name:"Crocin", category_id:3 }  } }
    let (:pass_with_no_manufacture_and_no_category) { { Product: { name:"Crocin" }  } }

    it "works with all params" do
      result = Product::Operations::Create.(pass_params)

      expect(result).to be_success

    end

    it "failes with missing inputs" do

      result = Product::Operations::Create.(pass_without_params)
      expect(result).to be_failure

    end

    it "fails with missing manufacturer " do
      result = Product::Operations::Create.(pass_with_no_manufacture_and_category)
      expect(result).to be_failure

    end

    it "fails with missing category" do
      result = Product::Operations::Create.(pass_with_no_manufacture_and_no_category)
      expect(result).to be_failure
    end

    it "works with correct manufacturer and category id" do

      result = Product::Operations::Create.(pass_with_manufacture_and_category)
      expect(result).to be_success

    end
  end

