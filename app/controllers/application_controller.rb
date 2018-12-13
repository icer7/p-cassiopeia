class ApplicationController < ActionController::Base

  def home
    render :file => "/app/views/index.html.erb"
  end
end
