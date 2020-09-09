class Login::ConstructionsController < Login::ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]

  def index
    @constructions = Construction.all
  end

  def show
  end

  def new
    @construction = Construction.new
    @construction.pictures.build
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
    @construction.pictures.build if @construction.pictures.blank?
  end

  def update
    if @construction.update(construction_params)
      redirect_to construction_path(@construction)
    else
      render "edit"
    end
  end

  def destroy
  end


  private

  def set_construction
    @construction = Construction.find(params[:id])
  end

  def construction_params
    params[:construction].permit(
      :name,
      :design,
      :area,
      :built_year,
      :introduction,
      :image,
      pictures_attributes: [
        :id,
        :picture
      ]
    )
  end

end
