class PicturesController < ApplicationController

  def wedding
    @pictures = Picture.where(category: "Bodas")
  end

  def crown
    @pictures = Picture.where(category: "Coronas")
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to root_path, notice: "Foto guardada correctamente"
    else
      render :new
    end
  end

  def edit
    @picture = Picture.find(params[:id])
  end

  def update
    @picture = Picture.find(params[:id])
    if @picture.update(picture_params)
      redirect_to root_path, notice: "Foto actualizada correctamente"
    else
      render :edit
    end
  end

private
  def picture_params
    params.require(:picture).permit(:title, :description, :category, :show, :foto)
  end
end
