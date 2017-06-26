class AdvertsController < ApplicationController
  before_action :advert_params, only: [:create]
  before_action :get_advert, only: [:show]

  def index
    @adverts = Advert.all
  end

  def new
    @advert = Advert.new
  end

  def show
  end

  def create
    @advert = Advert.new(advert_params)
    if @advert.save
      redirect_to advert_path(@advert), notice: t('.created')
    else
      render :new
    end
  end

  private

  def advert_params
    params.require(:advert).permit(:firstname, :lastname, :age)
  end

  def get_advert
    @advert = Advert.find(params[:id])
  end
end
