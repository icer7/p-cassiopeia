class SubmitPagesController < ApplicationController

  def home
    render :file => "/app/views/result.html.erb"
  end
end
