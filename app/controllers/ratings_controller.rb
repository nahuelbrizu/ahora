class RatingsController < ActionController::Base
  def index
    @ratings = Rating.all
    render json: @ratings
  end
  def show
    @rating = Rating.find(params[:id])
    render json: @rating
  end

  def create
    @rating = Rating.create!(rating_params)
    #  @Rating.save
    render json: @rating
  end
  def update
    @rating = Rating.find(params[:id])
    if @rating.update_attributes(rating_params)
      flash[:notice] = 'Rating updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Rating!'
      render :edit, :json
    end
  end
  def rating_params
    params.require(:rating).permit(:rating, :recipe_id)
  end
end


