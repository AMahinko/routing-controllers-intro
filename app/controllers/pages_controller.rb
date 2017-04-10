class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

def welcome

  @header= "This is the welcome page"

end

def about

end

def contest
  flash[:notice] = "Sorry, the contest has ended"
  redirect_to "/welcome"

end

def kitten
# set_kitten_url

end

def kittens
# set_kitten_url

end

def set_kitten_url

  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats/"
end

def secrets

if params[:secretword] == "password"
  render :secrets
else
  flash[:alert] = "Access Denied"
  redirect_to "/welcome"
end

end

end
