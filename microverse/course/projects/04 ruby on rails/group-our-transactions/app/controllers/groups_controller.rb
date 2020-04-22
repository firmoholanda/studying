class GroupsController < ApplicationController
  before_action :set_group, only: %i[show edit update destroy]

  def new
    @group = Group.new
  end

  def index
    @groups = Group.all.order(name: :asc)
  end

  def create
    @group = current_user.groups.build(group_params)

    if @group.save
      redirect_to groups_path, notice: 'group created.'
    else
      render :new, danger: 'group creation failed!'
    end
  end

  def show; end

  def edit; end

  def update
    if @group.update(group_params)
      redirect_to groups_path, notice: 'group updated.'
    else
      render :edit, danger: 'group update failed!'
    end
  end

  def destroy
    @group.destroy
    redirect_to groups_path, notice: 'group deleted.'
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :user_id, :icon)
  end
end
