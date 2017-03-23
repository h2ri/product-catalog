module Medicine::Operations

  class Create < Trailblazer::Operation

    step Model( Manufacturer, :new)
    step Contract::Build( constant: Manufacturer::Contract::Create )
    step Contract::Validate( key: :manufacturer )
    step Contract::Persist()
    step :notify!


    def notify!(options, model:, **)
      options["result.notify"] = Lib::Notification.(model)
    end
  end

end
