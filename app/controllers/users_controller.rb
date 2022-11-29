class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index,:edit, :destroy]

  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def edit
  end
end
