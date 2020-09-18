class ConstructionsController < ApplicationController

  def index
    @constructions = Construction.all
    # @constructions = Construction.all.page(params[:page]).per(9)
  end

  def show
    @construction = Construction.find(params[:id])
  end

end
