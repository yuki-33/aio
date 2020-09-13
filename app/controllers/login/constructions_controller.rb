class Login::ConstructionsController < Login::ApplicationController
  before_action :set_construction, only: [:show, :edit, :update, :destroy]

  def new
    @construction = Construction.new
    # @construction.pictures.build
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
    # @construction.pictures.build if @construction.pictures.blank?
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
      :type_id,
      :built_year,
      :introduction,
      :filter_id,
      :image,
      :image_2,
      :image_3,
      :image_4,
      :image_5,
      :image_6,
      :image_7,
      :image_8
      # pictures_attributes: [
      #   :id,
      #   :pictures
      # ]
    )
  end

end
