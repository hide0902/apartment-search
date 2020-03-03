class LikesController < ApplicationController
  
  def create
    @like = Like.create(room_id: current_user.id, room_id: params[:room_id])
    @likes = current_user.likes
    
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, room_id: params[:room_id])
    like.destroy
    
  end
end
