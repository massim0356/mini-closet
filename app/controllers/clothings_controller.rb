class ClothingsController < ApplicationController
  before_action :set_clothing, only: %i[show edit update destroy]
  def index
    @clothings = Clothing.all
  end

  def show
  end

  def new
    @clothing = Clothing.new
  end

  def create
    @clothing = Clothing.new(clothing_params)
    @clothing.user = current_user
    if @clothing.save
      redirect_to @clothing
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @clothing.update(clothing_params)
      redirect_to clothing_path(@clothing)
    else
      render :edit
    end
  end

  def destroy
    @clothing.destroy
    redirect_to clothings_path
  end

  private

  def clothing_params
    params.require(:clothing).permit(:name, :kind, :brand, :size)
  end

  def set_clothing
    @clothing = Clothing.find(params[:id])
  end
end
