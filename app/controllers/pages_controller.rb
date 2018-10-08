class PagesController < ApplicationController
  
  layout 'admin'
  before_action :find_subjects, :only => [:new, :create, :edit, :update]
  before_action :set_page_count, :only => [:new, :create, :edit, :update]
  
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
    @page_sections = Page.page_sections
  end
  
  def update
    @page = Page.find(params[:id])
    
    if @page.update_attributes(page_params)
      flash[:notice] = "Page updated successfully"
      redirect_to(page_path(@page))
    else
      @page_sections = Page.page_sections
      render 'edit'
    end
  end

  def new
    @page = Page.new
    @page_sections = Page.page_sections
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      redirect_to(pages_path) #It redirects to index
    else
      @page_sections = Page.page_sections
      render('new')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  
  def destroy
    @page = Page.find(params[:id])
    @page.destroy
    flash[:notice] = "Flash destroyed successfully"
    redirect_to(pages_path)
  end
  
  private
  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible, :subject_id)
  end
  
  def find_subjects
    @pages = Page.sorted
  end
  
  def set_page_count
    @page_count = Page.count
    if params[:action] == 'new' || params[:action] == 'create'
      @page_count += 1
    end
  end
  
end