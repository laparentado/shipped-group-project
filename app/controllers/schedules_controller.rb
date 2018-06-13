class SchedulesController < ApplicationController
  def index
    @boats=Boat.all
  end

  def assign
    s = Schedule.new(schedule_params)
    s.user_id = current_user.id
    s.boat_id = params[:id]
    if s.save
      redirect_to "/"
    else
      render "/jobs/new"
    end
  end

  def new
  end

  def show
  end

  def edit
  end

  private
  def schedule_params
    params.require(:schedule).permit(:user_id, :boat_id, :job_id)
  end
end
