class SubjectsController < ApplicationController
  
  layout 'admin'
  
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end

  def new
    @subject = Subject.new(:name => "hi")
    @subject_count = Subject.count + 1
  end
  
  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = "Subject created successfully."
      redirect_to(subjects_path) #It redirects to index
    else
      @subject_count = Subject.count
      render('new')
    end
  end

  def edit
    @subject = Subject.find(params[:id])
    @subject_count = Subject.count
  end
  
  def update
    @subject = Subject.find(params[:id])
    
    if @subject.update_attributes(subject_params)
      flash[:notice] = "Subject updated successfully."
      redirect_to(subject_path(@subject)) #It redirects to show
    else
      @subject_count = Subject.count
      render('edit')
    end
  end

  def delete
    @subject = Subject.find(params[:id])
  end
  
  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy
    flash[:notice] = "Subject '#{@subject.name}' deleted successfully."
    redirect_to(subjects_path) #It redirects to index
  end
  
  private
  def subject_params
    params.require(:subject).permit(:name, :position, :visible, :created_at)
  end
    
end