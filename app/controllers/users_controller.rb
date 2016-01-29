class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, status: :ok
  end

  def create
    user = User.new(params[:user])
    if user.save
      render json: user, status: :created
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: user
  end

  def destroy
    user.destroy
    head :no_content
  end

  def test
    render text: "hello chris"
  end
end
