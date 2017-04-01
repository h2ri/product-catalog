module Medicine::Operations

  class Create < Trailblazer::Operation

    step Model( Medicine, :new)
    step Contract::Build( constant: Medicine::Contract::Create )
    step Contract::Validate( key: :medicine )
    step Contract::Persist()

    # def notify!(options, model:, **)
    #   options["result.notify"] = Lib::Notification.(model)
    # end
  end

end
