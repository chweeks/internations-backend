class GroupsController < ApplicationController

  def index
    @groups = Group.all
    render json: @groups, status: :ok
  end

  def create
    @group = Group.new(params[:group])
    if @group.save
      render json: @group, status: :created
    else
      render json: @group.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: @group
  end

  def destroy
    @group.destroy
    head :no_content
  end
end
