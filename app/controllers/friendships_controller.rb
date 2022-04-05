class FriendshipsController < ActionController::Base

  def index
    @friendships = Friendship.all
    render json: @friendships
  end
  def show
    @friendship = Friendship.all
    render json: @friendship
  end
  def create
    @friendship = Friendship.create!(friendship_params)
    render json: @friendship
  end

  def update
    @friendship = Friendship.find(params[:id])
    if @friendship.update_attributes(friendship_params)
      flash[:notice] = 'Friendship updated!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to edit Friendship!'
      render :edit, :json
    end
  end

  def destroy
    @friendship = Friendship.find(params[:id])
    if @friendship.delete
      flash[:notice] = 'Friendship deleted!'
      redirect_to root_path
    else
      flash[:error] = 'Failed to delete this Friendship!'
      render :destroy
    end
  end
  def friendship_params
    params.require(:friendship).permit(:friend_id, :user_id, :status, :accepted_at)
  end

end

