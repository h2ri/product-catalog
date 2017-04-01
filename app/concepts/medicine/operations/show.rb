module Medicine::Operations

  class Show < Trailblazer::Operation
    step Model(Medicine, :find_by)
  end

end

