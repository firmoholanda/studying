class ProjectsController < ApplicationController
  before_action :set_project, only: %i[show edit update destroy]

  def new
    @project = Project.new
  end

  def index
    @projects = current_user.projects
  end

  def index_projects_no_group
    @projects_no_group = current_user.projects.includes(:projects_groups).where(projects_groups: { group_id: nil })
  end

  def create
    @project = current_user.projects.build(project_params)
    @project.groups = Group.find(params[:project][:group_ids]) if params[:project][:group_ids]

    if @project.save
      if params[:project][:group_ids]
        redirect_to projects_path, notice: 'project whith group created'
      else
        redirect_to projects_no_group_path, notice: 'project whithout group created'
      end
    else
      render :new, danger: 'project creation failed.'
    end
  end

  def show; end

  def edit; end

  def update
    @project.groups = []
    @project.groups = Group.find(params[:project][:group_ids]) if params[:project][:group_ids]

    if @project.update(project_params)
      if params[:project][:group_ids]
        redirect_to projects_path, notice: 'project updated!'
      else
        redirect_to projects_no_group_path, notice: 'project updated!'
      end
    else
      render :edit, danger: 'project update failed.'
    end
  end

  def destroy
    @project.destroy
    redirect_to projects_path, notice: 'project deleted'
  end

  def search
    @parameter = params[:search]
    @results = Project.where('name LIKE ?', "%#{@parameter}%")
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :hours, :author_id, :group_id)
  end
end
