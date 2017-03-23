module Product::Operations

  class Create < Trailblazer::Operation

    step Model( Product, :new)
    step :manufacturer_id?
    step :category_id?
    step Contract::Build( constant: Product::Contract::Create )
    step :model_view1?
    step Contract::Validate( key: :Product )
    step :model_view2?
    step Contract::Persist()
    step :notify!

    def model_view1?(options)
      puts options.inspect
      return true
    end

    def model_view2?(options)
      puts options.inspect
      return true
    end

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

    def notify!(options, model:, **)
      puts options.inspect
      options["result.notify"] = Product::Lib::Notification.(model)
    end
  end

end
