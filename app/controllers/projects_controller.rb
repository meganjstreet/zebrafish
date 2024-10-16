class ProjectsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @project = Project.find(params[:id])
  end

  private

  def project_params
    params.require(:project).permit(:name, :campaign, :media_type, :client, :featured, :details, :summary, :services_rendered, :director, :photographer, :videographer, :producer, :category_id, :key_visual, :client_logo, :video_url, :title, :subtitle, project_images: [] )
  end
end
