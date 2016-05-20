class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_action :authenticate_user!
# this above - is from devise, it says before EVERY action make sure a user is signed in, otherwise kick them back to the sign in page
end
