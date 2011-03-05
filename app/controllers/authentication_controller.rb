class AuthenticationController < ApplicationController
  def callback
    auth = request.env['omniauth.auth']
    key = session[:key]

    puts p(auth)
    session[:uid] = auth['uid']
    session[:name] = auth['user_info']['name']
    session[:nickname] = auth['user_info']['nickname']
    session[:provider] = params[:provider]

    event = Events.find_by_key(session[:key])
    if !event.nil?
      person = People.where(:event_id => event.id, :provider => session[:provider], :uid => session[:uid]).first
      if person.nil?
        People.create(
          :event_id => event.id,
          :provider => session[:provider],
          :uid => session[:uid],
          :name  => session[:name],
          :nickname => session[:nickname]
        )
      end

      reset_session
    end


    redirect_to event_url :key => key || root_url
  end
end
