class ItemsController < ApplicationController
  before_action :set_item, only: [:show,:edit,:update,:destroy]
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to item_path(@item)
  end

  def edit
  end

  def update
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def destroy
    @item.destroy
    redirect_to root_path, status: :see_other
  end




  private

  def set_item
    @item = Item.find(params[:id])
  end


  def item_params
    params.require(:item).permit(:name,:description,:address,:date_found,:category)

  end





end
