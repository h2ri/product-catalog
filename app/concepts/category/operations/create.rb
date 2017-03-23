module Category::Operations
  class Create < Trailblazer::Operation

    step Model( Category, :new)
    step Contract::Build( constant: Category::Contract::Create )
    step Contract::Validate( key: :Category )
    step Contract::Persist()
    step :notify!


    def notify!(options, model:, **)
      options["result.notify"] = Lib::Notification.(model)
    end
  end
end
