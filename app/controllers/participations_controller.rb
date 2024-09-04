class ParticipationsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    if @event.participations.count < @event.capacity
      @participation = @event.participations.new(user: current_user)


      if @participation.save
        @participation.update(status:"booked!")
        redirect_to @event, notice: "You are a particpant in #{@event.title}"
      else
        redirect_to @event, alert: 'Unable to participate in the event. Please try again'
      end
    else
      redirect_to @event, alert: 'Sorry, this event is fully booked'
    end
  end

  def show
    if current_user.admin? || current_user == @event.user
      @participants = @event.participants
    else
      redirect_to root_path, alert: "unauthorized access"
    end
    @participation = Participation.find(params[:id])
    @event = @participation.event
  end

  def destroy
    @participation.destroy
    redirect_to events_path, status: :see_other
  end


end
