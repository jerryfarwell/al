class EventsController < ApplicationController
  before_action :authenticate_user!, only: [:new,:edit, :destroy]
  
  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def edit
  end

  def create
    @event = Event.create(title: params[:title], author: params[:author], start_date: params[:start_date])

      if @event.save
        redirect_to events_path
    end
  end
end
