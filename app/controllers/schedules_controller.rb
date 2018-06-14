class SchedulesController < ApplicationController
  def index
    @boats=Boat.all
  end

  def assign
    s = Schedule.new(schedule_params)
    s.job_id = params[:job_id]
    s.user_id = current_user.id
    if s.save

      redirect_to "/"
    else

      redirect_to "/jobs"
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
    params.require(:schedule).permit(:slot, :user_id, :boat_id, :job_id)
  end
end
