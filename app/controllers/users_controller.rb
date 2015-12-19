class UsersController < ApplicationController
  def index
    render json: User.all
  end

  def create
    render json: User.create(user_params)
  end

  def show
    render json: User.find_by!(toggl_api_key: params[:id])
  end

  def update
    user = User.find_by!(toggl_api_key: params[:id])
    user.update_attributes(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:toggl_id, :toggl_api_key, :workspace_id, :email, :name)
  end
end
