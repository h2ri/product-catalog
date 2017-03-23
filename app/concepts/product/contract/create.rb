#:contract
require "reform"
require "reform/form/dry"

module Product::Contract
  class Create < Reform::Form
    include Dry

    #:property
    property :name
    property :category_id
    property :manufacturer_id
    property :qty_per_pack
    property :brand
    property :is_banned
    property :min_mrp
    property :max_mrp
    property :is_refrigerated
    property :created_by
    property :is_verified

    #:property end

    #:validation
    validation do
      required(:name).filled
      required(:category_id).filled
      required(:manufacturer_id).filled
    end
    #:validation end
  end
end
#:contract end