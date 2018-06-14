class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end
def home
  @schedules = Schedule.all

end

  def new
    @job = Job.new
    @boats = Boat.all
  end

  def create
    @job = Job.new(job_params)
    @job.user_id = current_user.id
    if @job.save
      flash[:success] = "New job created!"
      redirect_to "/jobs"
    else
      @boats=Boat.all
      render "/jobs/new"
    end
  end

  def show
    @job = Job.find(params[:id])
    @boats = Boat.all
  end

  def edit
    @job = Job.find(params[:id])

  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      redirect_to "/jobs"
    else
      render "/jobs/edit"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to "/jobs"
  end

  private

  def job_params
    params.require(:job).permit(:description, :origin, :destination, :cost, :size, :user_id)
  end
end
