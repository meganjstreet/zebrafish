class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @featured_projects = Project.where(featured: true)
    @categories = Category.all
  end

  def partials
    render partial: params[:name]
  end
end
