class PagesController < ApplicationController
  before_action :find_page, only: [ :show, :edit ]
  
  def create
    @pages = Page.search(params[:search]).page(params[:page])
  end
  
  def index
    @pages = Page.all.page(params[:page])
  end
  
  def new
    @page = Page.new
  end
  
  private
  
  def find_page
    @page = Page.find(params[:id])
  end
end
