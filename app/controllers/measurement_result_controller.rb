class MeasurementResultController < ApplicationController

  def home
    @value = params[:value]
    binding.pry
    render :file => "/app/views/measurement_result.html.erb"
  end
end
