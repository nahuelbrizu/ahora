class LikesController < ActionController::Base
  def index
    @likes = Like.all
    render json: @likes
  end
  def show
    @like = Like.find(params[:id])
    render json: @like
  end

  def create
    @like = Like.create!(like_params)
    #  @like.save
    render json: @like
  end
  def update
    @like = Like.find(params[:id])
    if @like.update_attributes(like_params)
      flash[:notice] = 'like updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit like!'
      render :edit, :json
    end
  end
  def like_params
    params.require(:like).permit(:like, :recipe_id)
  end
end

