module Product::Operations

  class Create < Trailblazer::Operation

    step Model( Product, :new)
    step :manufacturer_id?
    step :category_id?
    step Contract::Build( constant: Product::Contract::Create )
    step Contract::Validate( key: :Product )
    step Wrap ->(*, &block) { ActiveRecord::Base.transaction do block.call end } {
      step :attribute_create?
      step Contract::Persist()
    }
    step :notify!

    def manufacturer_id?(options)
      par =  { id: options.to_hash[:params][:Product][:manufacturer_id].to_i }
      result = Manufacturer::Operations::Show.(par)
      return result.success?
    end

    def category_id?(options)
      par =  { id: options.to_hash[:params][:Product][:category_id].to_i }
      result = Category::Operations::Show.(par)
      return result.success?
    end

    def attribute_create?(options, model:, **)

      #params = options.to_hash[:params][:Product].collect { |k, v| ['a', 'b'].inc}

      params = {medicine: { "drug_form": options.to_hash[:params][:Product][:drug_form],
                            "pack_form": options.to_hash[:params][:Product][:pack_form],
                            "schedule": options.to_hash[:params][:Product][:schedule],
                            "is_h1": options.to_hash[:params][:Product][:is_h1],
                            "is_chronic": options.to_hash[:params][:Product][:is_chronic],
                            "use_form": options.to_hash[:params][:Product][:use_form],
                            "use_form_head": options.to_hash[:params][:Product][:use_form_head],
                            "therapeutic": options.to_hash[:params][:Product][:therapeutic],
                            "product_id": 1 }}


      result = Medicine::Operations::Create.(params)
      if result.success?
        options["model"][:attribute_id] = result["model"][:id]
      end
      return result.success?
    end

    def notify!(options, model:, **)
      options["result.notify"] = Product::Lib::Notification.(model)
    end
  end

end
