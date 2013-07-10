class IncidentsController < ApplicationController

  def index
    @incidents = Incident.all
    respond_to do |format|
      format.html
      format.json { render :json => @incident }
    end
  end
  def show
    @incident = Incident.find(params[:id])
    respond_to do |format|
      format.html
      format.json { render :json => @incident }
    end
  end
  def create
    Incident.create(@create_hash)
  end
  def delete
    Incident.find(@id).destroy
  end
  def update
    i = find(@id)
    i.update_attributes(@attribute_hash)
  end
  def search
    #some search code  
  end
end