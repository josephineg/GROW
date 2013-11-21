class InitiativesController < ApplicationController

  def index
    @initiative = Initiative.all
  end

  def show
    @initiative = Initiative.find(params[:id])
  end

  def new
    @initiative = Initiative.new 
  end

  def create
       @iniiative = Initiative.new(params[:initiative].permit(:title, :description))
 
    if @initiative.save
      redirect_to @initiative
    else
      render 'new'
    end
  end

  def initiative_params
    params.require(:intiative).permit(:title, :description)
  end

  def edit
    @initiative = Initiative.find(params[:id])
  end

  def update
        @initiative = Initiative.find(params[:id])
    if @initiative.update(params[:initiative].permit(:title, :description))
        redirect_to @initiative
    else
      render 'edit'
    end
  end

  def destroy
    @initiative = Initiative.find(params[:id])
    @initiative.destroy

    redirect_to initiatives_path
  end



end
