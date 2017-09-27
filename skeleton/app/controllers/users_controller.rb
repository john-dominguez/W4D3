class UsersController < ApplicationController
  before_action :login_redirect, only: [:new, :create]
  
  def new
    render :new
  end

  def create
    render plain: "HI"
  end
end
