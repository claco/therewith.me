class HomeController < ApplicationController
  def index
    if request.post? && !params[:key].blank?
      redirect_to event_url(:key => params[:key])
    end
  end
end
