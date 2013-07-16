class IncidentsController < ApplicationController

  
  def index
    render :action => :show
  end
  def show
    @incident = Incident.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @incident }
    end
  end
  def create
    Incident.create(params[:incident])
  end
  def delete
    Incident.find(params[:id]).destroy
  end
  def update
    i = find(params[:id])
    i.update_attributes(params[:attributes])
  end
  def edit
  
  end
  
  def search
    #some search code  
  end
end