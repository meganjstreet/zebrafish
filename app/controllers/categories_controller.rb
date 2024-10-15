class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :show ]
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save!
      redirect_to categories_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @categories = Category.all
    @category = Category.find(params[:id])
    @projects = @category.projects
    @featured_projects = Project.where(featured: true)

  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
