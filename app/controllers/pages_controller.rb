class PagesController < ApplicationController
  
  layout 'admin'
  def index
    @pages = Page.sorted
  end

  def show
    @page = Page.find(params[:id])
  end

  def edit
    @page = Page.find(params[:id])
    @page_sections = Page.page_sections
    @page_count = Page.page_count
  end
  
  def update
    @page = Page.find(params[:id])
    
    if @page.update_attributes(page_params)
      redirect_to(page_path(@page))
    else
      @page_count = Page.page_count
      @page_sections = Page.page_sections
      render 'edit'
    end
  end

  def new
    @page = Page.new
    @page_sections = Page.page_sections
    @page_count = Page.page_count + 1
  end

  def create
    @page = Page.new(page_params)
    
    if @page.save
      redirect_to(pages_path) #It redirects to index
    else
      @page_count = Page.page_count + 1
      @page_sections = Page.page_sections
      render('new')
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  
  def destroy
    @page = Page.find(params[:id])
    
    if @page.destroy
      redirect_to(pages_path)
    else
      
    end
  end
  
  private
  def page_params
    params.require(:page).permit(:name, :permalink, :position, :visible, :subject_id)
  end
end


