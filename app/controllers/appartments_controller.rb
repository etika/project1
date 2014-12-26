class AppartmentsController < ApplicationController
  before_action :set_appartment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    # @appartments = Kaminari.paginate_array(Appartment.all).page(params[:page]).per(3)
   @appartments= Appartment.all.page(params[:page]).per(2)
    respond_with(@appartments)
  end

  def show
    respond_with(@appartment)
  end

  def new
    @appartment = Appartment.new
    respond_with(@appartment)
  end

  def edit
  end

  def create
    @appartment = Appartment.new(appartment_params)
    @appartment.save
    respond_with(@appartment)
  end

  def update
    @appartment.update(appartment_params)
    respond_with(@appartment)
  end

  def destroy
    @appartment.destroy
    respond_with(@appartment)
  end

  private
    def set_appartment
      @appartment = Appartment.find(params[:id])
    end

    def appartment_params
      params.require(:appartment).permit(:house_type, :location, :rent,:photo)
    end
end
