class ConstructionsController < ApplicationController

  def index
    @constructions = Construction.all
  end

  def show
    @construction = Construction.find(params[:id])
  end

end
