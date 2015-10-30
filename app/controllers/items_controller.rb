class ItemsController < ApplicationController
  def create
    @item = current_user.items.new(item_params)
    if @item.save
      flash[:notice] = "your item was saved"
      redirect_to current_user
    else
      flash[:error] = "your item was not saved"
      render :new
    end
  end
  
  def destroy
    @item = Item.find(params[:id])
    
    if @item.destroy
      flash[:notice] = "Item has been terminated"
    else
      flash[:error] = "Whoops!"
    end
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def new
    @item = Item.new
  end
  
  
  private
  
  def item_params
    params.require(:item).permit(:name)
  end
  
end
