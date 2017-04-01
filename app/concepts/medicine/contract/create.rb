#:contract
require "reform"
require "reform/form/dry"

module Medicine::Contract
  class Create < Reform::Form
    include Dry

    #:property
    property :drug_form
    property :pack_form
    property :schedule
    property :is_h1
    property :is_chronic
    property :use_form
    property :use_form_head
    property :therapeutic
    property :product_id
    #:property end

    #:validation
    validation do
      required(:product_id).filled
    end
    #:validation end
  end
end
#:contract end