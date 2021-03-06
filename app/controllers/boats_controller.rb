class BoatsController < ApplicationController
  def index

    @boats = Boat.all
  end

  def new
    if !current_user
      redirect_to "/"
    else
    @boat=Boat.new
  end
end

  def create
    @boat = Boat.new(boat_params)
    @boat.user_id=current_user.id
    if @boat.save
      flash[:success] = "New boat created!"
    #   if(params[:image])
    #     params[:image].each do |f|
    #     @boat.image = (image: f)
    #   end
    # end

      redirect_to "/"
    else
      render "/boats/new"
  end
end


  def show
    @boat = Boat.find(params[:id])

  end

  def edit
    @boat = Boat.find(params[:id])

  end

    def update
      @boat = Boat.find(params[:id])
      if @boat.update(boat_params)
        redirect_to '/'
      else
        render edit_boat_boat
      end
    end

  def destroy
    @boat = Boat.find(params[:id])
    @boat.destroy
    redirect_to "/"
  end

private

  def boat_params
    params.require(:boat).permit(:name, :max_load, :location, :user_id, :image, :remove_image)

end
end
