class MedicinesController < ApplicationController

  def create

    # params = { { medicine: { "drug_form": "test",
    #                          "pack_form": "test",
    #                          "schedule": "test",
    #                          "is_h1": true,
    #                          "is_chronic": true,
    #                          "use_form": "test",
    #                          "use_form_head": "test",
    #                          "therapeutic": "test",
    #                          "product_id": 1 } }
    result = Medicine::Operations::Create.(params)
    puts result.success?
    render json: "medicine created"
  end

  def show
    render json: Medicine::Operations::Show.(params)["model"]
  end

end