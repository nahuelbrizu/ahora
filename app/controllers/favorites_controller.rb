class FavoritesController < ActionController::Base
  def index
    @favorites = Favorite.all
    render json: @favorites
  end
  def show
    @favorite = Favorite.all
    render json: @favorite
  end
  def create
    @favorite = Favorite.create!(favorite_params)
    render json: @favorite
  end

  def update
    @favorite = Favorite.find(params[:id])
    if @favorite.update_attributes(favorite_params)
      flash[:notice] = 'favorite updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit favorite!'
      render :edit, :json
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.delete
      flash[:notice] = 'favorite deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this favorite!'
      render :destroy
    end
  end
  def favorite_params
    params.require(:favorite).permit(:favorite, :recipe_id)
  end

end
