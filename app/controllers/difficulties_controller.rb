class DifficultiesController < ActionController::Base
  def index
    @difficulties = Difficulty.all
    render json: @difficulties
  end
  def show
    @difficulty = Difficulty.find(params[:id])
    render json: @difficulty
  end

  def create
    @difficulty = Difficulty.create!(difficulty_params)
    #  @difficulty.save
    render json: @difficulty
  end
  def update
    @difficulty = Difficulty.find(params[:id])
    if @difficulty.update_attributes(difficulty_params)
      flash[:notice] = 'difficulty updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit difficulty!'
      render :edit, :json
    end
  end
  def difficulty_params
    params.require(:difficulty).permit(:difficultyRating, :recipe_id)
  end
end


