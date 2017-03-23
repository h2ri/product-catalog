module Manufacturer::Operations

  class Show < Trailblazer::Operation
    step Model(Manufacturer, :find_by)
  end

end

