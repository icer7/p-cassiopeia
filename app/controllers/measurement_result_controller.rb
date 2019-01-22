class MeasurementResultController < ApplicationController

  def home
    @value = params[:value]
    render :file => "/app/views/measurement_result.html.erb"
  end
end
