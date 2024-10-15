class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :portfolio, :contact, :about, :partials ]

  def home
    @featured_projects = Project.where(featured: true)
    @categories = Category.all
  end

  def portfolio
    @featured_projects = Project.where(featured: true)
    @categories = Category.all
  end

  def contact
    @contact = Contact.new
  end

  def about
  end

  def partials
    render partial: params[:name]
  end
end
