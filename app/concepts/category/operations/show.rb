module Category::Operations

  class Show < Trailblazer::Operation

    step Model(Category, :find_by)

  end
end
