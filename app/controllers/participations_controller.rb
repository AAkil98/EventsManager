class ParticipationsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @participation = Participation.new(participation_params)
    @participation.event = @event
    @participation.user = current_user
    if @participation.save
      redirect_to events_path
    else
      render "events/show"
    end
  end

  def show
    @participation = Participation.find(params[:id])
  end

  def destroy
    @participation.destroy
    redirect_to events_path, status: :see_other
  end

  private

  def participation_params
    params.require(:participation).permit(:status)
  end
end
