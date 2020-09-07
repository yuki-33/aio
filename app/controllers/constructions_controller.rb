class ConstructionsController < ApplicationController
  before_action :set_construction, only: [:show, :edit, :update, :destroy]

  def index
    @constructions = Construction.all
  end

  def show
  end

  def new
    @construction = Construction.new
    # @shop.menus.build
  end

  def create
    @construction = Construction.new(construction_params)
    if @construction.save
      redirect_to constructions_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @construction.update(construction_params)
      redirect_to construction_path(@shop)
    else
      render "edit"
    end
  end

  private

  def set_construction
    @construction = Construction.find(params[:id])
  end

  def construction_params
    params.permit(
      :name,
      :design,
      :area,
      :built_year,
      :introduction
    )
  end

end
