class SectionsController < ApplicationController
  def index
    @sections = Section.all
  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new
  end
  
  def create
    @section = Section.new(section_params)
    
    if @section.save
      flash[:notice] = "Page created successfully."
      redirect_to(sections_path)
    else
      render('new')
    end
  end

  def edit
    @section = Section.find(params[:id])
  end
  
  def update
    @section = Section.find(params[:id])
    
    if @section.update_attributes(section_params)
      flash[:notice] = "Subject created successfully."
      redirect_to(section_path(@section))
    else
      render('edit')
    end
  end

  def delete
    @section = Section.find(params[:id])
  end
  
  def destroy
    @section = Section.find(params[:id])
    if @section.destroy
      flash[:notice] = "Subject created successfully."
      redirect_to(sections_path)
    end
  end
  
  private
  def section_params
    params.require(:section).permit(:name, :position, :visible, :content, :content_type, :page_id)
    
  end
end