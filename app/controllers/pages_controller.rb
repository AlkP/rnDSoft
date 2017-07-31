class PagesController < ApplicationController
  before_action :find_page, only: [ :show, :edit ]
  before_action :set_pages, only: [ :create, :index ]
  
  def create
  end
  
  def index
  end
  
  def new
    @page = Page.new
  end
  
  private
  
  def find_page
    @page = Page.find(params[:id])
  end
  
  def set_pages
    @pages = Page.search(params[:search].to_s).page(params[:page])
  end
end
