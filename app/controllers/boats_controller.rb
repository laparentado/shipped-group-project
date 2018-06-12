class BoatsController < ApplicationController
  def index
  end

  def new
    @boat=Boat.new
  end

  def create
    boat=Boat.new(boat_params)
    boat.user_id=current_user.id
    if boat.save
      redirect_to "/"
    else
      render "/boats/new"
  end
end


  def show
    @boat=Boat.find(params[:id])
  end

  def edit
  end

private

  def boat_params
    params.require(:boat).permit(:name, :max_load, :location, :user_id)

end
end
