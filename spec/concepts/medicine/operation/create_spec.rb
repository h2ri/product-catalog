require 'spec_helper'
require 'rails_helper'


require_relative "../../../../app/models/medicine"
require_relative "../../../../app/concepts/medicine/operations/create"
require_relative "../../../../app/concepts/medicine/operations/show"

  RSpec.describe Medicine::Operations::Create do
    let (:pass_with_params) { { medicine: { "drug_form": "test",
                                            "pack_form": "test",
                                            "schedule": "test",
                                            "is_h1": true,
                                            "is_chronic": true,
                                            "use_form": "test",
                                            "use_form_head": "test",
                                            "therapeutic": "test",
                                            "product_id": 1 } } }
    # let (:pass_with_params) { { medicine: { drug_form:"test", pack_form:"test", schedule:"test",
    #                                            is_h1:true, is_chronic:true,use_form:"test",
    #                                            use_form_head:"test",therapeutic:"test",product_id:1 } } }


    it "failes with missing inputs" do

      result = Medicine::Operations::Create.(pass_with_params)
      puts "\n \n"
      puts result.inspect
      expect(result).to be_success

    end

    # it "works with correct Medicine name" do
    #
    #   result = Medicine::Operations::Create.(pass_params)
    #   expect(result).to be_success
    #
    # end

  end

  # RSpec.describe Medicine::Operations::Show do
  #   let (:pass_params) {  { id: 1 }  }
  #
  #   # it "works if id exsist" do
  #   #
  #   #   result = Medicine::Operations::Show.(pass_params)
  #   #
  #   #   expect(result).to be_success
  #   #
  #   # end
  # end

