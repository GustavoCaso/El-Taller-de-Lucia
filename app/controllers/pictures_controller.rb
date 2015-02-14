class PicturesController < ApplicationController

  before_action :require_login, except:[:wedding,:crown, :event, :center]
  before_action :set_picture, except:[:index, :new, :create, :wedding,:crown, :event, :center]

  def wedding
    @pictures = Picture.where(category: "Bodas", show: true)
  end

  def crown
    @pictures = Picture.where(category: "Coronas", show: true)
  end

  def event
    @pictures = Picture.where(category: "Eventos", show: true)
  end

  def center
    @pictures = Picture.where(category: "Centros", show: true )
  end

  def index
    @pictures = Picture.all
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to pictures_path, notice: "Foto guardada correctamente"
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @picture.update(picture_params)
      redirect_to pictures_path, notice: "Foto actualizada correctamente"
    else
      render :edit
    end
  end

  def destroy
    @picture.delete
    redirect_to pictures_path, notice: "Foto borrada correctamente"
  end

  private

  def set_picture
    @picture = Picture.find(params[:id])
  end

  def picture_params
    params.require(:picture).permit(:title, :description, :category, :show, :foto)
  end
end
