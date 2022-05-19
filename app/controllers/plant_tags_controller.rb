class PlantTagsController < ApplicationController
  def new
    # raise
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    @plant = Plant.find(params[:plant_id])
    @tags = Tag.where(id: params[:plant_tag][:tag])
    @tags.each do |tag|
      plant_tag = PlantTag.new(plant: @plant, tag: tag)
      plant_tag.save
    end
    redirect_to garden_path(@plant.garden)
  end

  def destroy
    raise
    plant_tag =PlantTag.find(params[:plant_id])
    plant_tag.destroy
    # redirect_to gardens_path(@plant)
  end

  # def destroy
  #   @bookmark = Bookmark.find(params[:id])
  #   @bookmark.destroy
  #   redirect_to list_path(@bookmark.list)
  # end
end
