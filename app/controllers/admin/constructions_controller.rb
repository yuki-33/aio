class Admin::ConstructionsController < Admin::ApplicationController
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
    @construction.destroy
    redirect_to constructions_path
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
      :image_8,
      :image_9,
      :image_10,
      # :remove_image,
      # :remove_image_2,
      # :remove_image_3,
      :remove_image_4,
      :remove_image_5,
      :remove_image_6,
      :remove_image_7,
      :remove_image_8,
      :remove_image_9,
      :remove_image_10
      # pictures_attributes: [
      #   :id,
      #   :pictures
      # ]
    )
  end

end
