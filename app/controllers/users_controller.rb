class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@post_images = @user.post_images.page(params[:page]).reverse_order
  	#↑そのユーザー(@user)に関連付けられた投稿(.post_images)のみ、@post_imagesに渡せる？
  end
end
