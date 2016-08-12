class ItemStatusesController < ApplicationController
  before_action :set_item_status, only: [:show, :update, :destroy]

  # GET /item_statuses
  def index
    @item_statuses = ItemStatus.all

    render json: @item_statuses
  end

  # GET /item_statuses/1
  def show
    render json: @item_status
  end

  # POST /item_statuses
  def create
    @item_status = ItemStatus.new(item_status_params)

    if @item_status.save
      render json: @item_status, status: :created, location: @item_status
    else
      render json: @item_status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /item_statuses/1
  def update
    if @item_status.update(item_status_params)
      render json: @item_status
    else
      render json: @item_status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /item_statuses/1
  def destroy
    @item_status.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_status
      @item_status = ItemStatus.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_status_params
      params.require(:item_status).permit(:name)
    end
end
