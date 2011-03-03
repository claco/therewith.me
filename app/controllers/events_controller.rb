class EventsController < ApplicationController
  def index
    session[:key] = params[:key]

    @event = Events.find_by_key(session[:key])
    @people = @event.nil? ? [] : @event.people

    if @event.nil? && authenticated?
      if request.post? && !params[:name].blank?
        @event = Events.create(
          :key  => session[:key],
          :name => params[:name],
          :provider => session[:provider],
          :uid => session[:uid]
        )

        People.create(
          :event_id => @event.id,
          :provider => session[:provider],
          :uid => session[:uid],
          :name  => session[:name],
          :nickname => session[:nickname]
        )

        key = session[:key]
        reset_session

        redirect_to event_url :key => key
      elsif request.post?
        flash.now[:error] = 'Name is required!'
      end
    end
  end
end
