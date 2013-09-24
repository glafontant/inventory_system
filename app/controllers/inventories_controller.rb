class InventoriesController < ApplicationController
  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save 
      flash[:notice] = "Inventory entry was successfully recorded"
      redirect_to inventory_path(@inventory)
    else
      flash[:notice] = "Enter the required fields and resubmit"
      render new_inventory_path
    end
  end

  def show
    @inventory = Inventory.find(params[:id])
  end

  private
  def inventory_params
    params.require(:inventory).permit(:title, :description, :quantity)
  end
end
