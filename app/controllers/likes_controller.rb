class LikesController < ApplicationController
  def creste
    @like = current_user.likes.create(room_id: params[:room_id])
  end

  def destroy
    @like = Like.find_by(room_id: params[:room_id], user_id: current_user.id)
    @like.destroy
  end
end
