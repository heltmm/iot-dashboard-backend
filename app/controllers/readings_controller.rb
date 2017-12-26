class ReadingsController < ApplicationController
  def index
    @test =  {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end

  def create
    @test =  {"quotation": "The secret of getting ahead is getting started."}
    json_response(@quotes)
  end
end
