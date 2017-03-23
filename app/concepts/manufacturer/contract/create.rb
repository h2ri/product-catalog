#:contract
require "reform"
require "reform/form/dry"

module Manufacturer::Contract
  class Create < Reform::Form
    include Dry

    #:property
    property :name
    #:property end

    #:validation
    validation do
      required(:name).filled
    end
    #:validation end
  end
end
#:contract end