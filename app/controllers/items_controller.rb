class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.getAllItems
    filterBannedItems
    render json: @items
    
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @item = Item.new(item_params)

    if @item.save
      render json: @item, status: :created, location: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end
  
  # /soldItems/1
  def soldItems
    # find id for Sold
    @status = ItemStatus.find_by name: "Sold"

    @items = Item.items.getSoldItems(@status.id, params[:seller_id])
    filterBannedItems
    render json: @items
  end
  
  # /categoryItems/1
  def categoryItems
    # Get all items in a category regardless of their status
    @items = Item.items.getCategoryItems(params[:category_id])
    filterBannedItems
    
    render json: @items
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.items.getItem(params[:id])
      filterBannedItems(@item)
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit(:title, :description, :price, :published_date, :itemStatus_id, :category_id, :seller_id)
    end
end
