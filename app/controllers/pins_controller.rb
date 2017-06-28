class PinsController < ApplicationController
  before_action :find_pin, only: [:show, :new, :edit, :update, :destroy]

  def index

  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: "Successfully created new Pin"
    else
      render :new
    end
  end

  def show
  end

  private

  def find_pin
    @pin = Pin.find(params[:id])
  end

  def pin_params
    params.require(:pin).permit(:title, :description)
  end
end
