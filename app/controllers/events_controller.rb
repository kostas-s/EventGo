class EventsController < ApplicationController
  before_action :require_signed_in, only: [:create, :new]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
    @event = Event.find_by(id: params[:id])
  end

  def create
    @user = User.find_by(id: session[:user_id])
    @event = @user.hosted_events.build(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to '/', notice: "Event posted!"}
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        puts @event.errors.full_messages
        format.html { redirect_to '/', alert: "Event could not be posted..."}
        format.json { head :no_content }
      end
    end
  end


  private
  def event_params
    params.require(:event).permit(:title, :description, :location, :date, :user_id)
  end

  def require_signed_in
    if !@user_signed_in
      respond_to {|format| format.html {redirect_to '/sessions/new', alert:  "You have to be signed in!" }}
    end
  end
end