class AdvertsController < ApplicationController
  def index
    @adverts = Advert.all
  end

  def new
    @advert = Advert.new
  end
end
