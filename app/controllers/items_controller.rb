class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)

    respond_to do |format|
      if @item.save
        format.html { redirect_to item_path(@item ) }
      else
        format.html { render :new }
      end
    end
  end

  private

  def item_params
    binding.pry
    params.require(:items).permit(:name, :price, :description)
  end
end
