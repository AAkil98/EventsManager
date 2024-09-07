class EventsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_event, only:[:show, :edit, :update, :destroy]
  def index
    @events = policy_scope(Event)
    @participation = Participation.new
  end

  def show
    authorize @event
    @participation = Participation.new
    @participations = @event.participations.where(user: current_user)
  end

  def new
    @event = Event.new
    authorize @event
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    authorize @event
    if @event.save
      redirect_to events_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    authorize @event
  end

  def update
    authorize @event
    if @event.update(event_params)
      redirect_to event_path(@event)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @event
    @event.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def event_params
    params.require(:event).permit(:title, :category, :description, :capacity, :starting_day, :ending_day, :mode, :photo)
  end

  def set_event
    @event = Event.find(params[:id])

  rescue ActiveRecord::RecordNotFound
    redirect_to events_path, alert: "Event not found"
  end
end
