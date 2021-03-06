class NewslettersController < ApplicationController

  before_action :require_login
  before_action :set_newsletter, except:[:index, :new, :create]

  def index
    @newsletters = Newsletter.all
  end

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      redirect_to newsletters_path, notice: "Articulo de prensa guardado correctamente"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @newsletter.update(newsletter_params)
      redirect_to newsletters_path, notice: "Articulo de prensa modificada correctamente"
    else
      render :edit
    end
  end

  def destroy
    @newsletter.destroy
    redirect_to newsletters_path, notice: "Articulo de prensa borrada correctamente"
  end

private

  def set_newsletter
    @newsletter = Newsletter.find(params[:id])
  end

  def newsletter_params
    params.require(:newsletter).permit(:title, :text, :url, :foto)
  end
end
