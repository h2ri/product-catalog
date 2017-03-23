require 'spec_helper'
require 'rails_helper'


require_relative "../../../../app/models/manufacturer"
require_relative "../../../../app/concepts/manufacturer/operations/create"
require_relative "../../../../app/concepts/manufacturer/operations/show"

  RSpec.describe Manufacturer::Operations::Create do
    let (:pass_params) { { manufacturer: { name: "Cipla" } } }
    let (:pass_without_params) { { manufacturer: {  } } }

    it "failes with missing inputs" do

      result = Manufacturer::Operations::Create.(pass_without_params)
      expect(result).to be_failure

    end

    it "works with correct manufacturer name" do

      result = Manufacturer::Operations::Create.(pass_params)
      expect(result).to be_success

    end

  end

  RSpec.describe Manufacturer::Operations::Show do
    let (:pass_params) {  { id: 1 }  }

    it "works if id exsist" do

      result = Manufacturer::Operations::Show.(pass_params)

      expect(result).to be_success

    end
  end

