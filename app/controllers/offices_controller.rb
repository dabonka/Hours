class OfficesController < ApplicationController
  def index
    @offices = Office.all
  end

  def show
    @office = Office.find(params[:id])
  end

  def edit
    resource
  end

  def new
    @office = Office.new
  end

  def create
    @office = Office.new(office_params)
    if @office.save
        redirect_to offices_path
    else
      render new_office_path
    end
  end

  def update
    if resource.update_attributes(office_params)
      redirect_to offices_path
    else
      render :edit
    end
  end

  def destroy
    @office = Office.find(params[:id])
    @office.destroy
    redirect_to offices_path
  end

private

  def resource
    @office ||= Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:name, :country, :town, :postindex, :address, :note, :client_id)
  end
end
