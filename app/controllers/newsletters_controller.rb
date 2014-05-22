class NewslettersController < ApplicationController

  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      redirect_to root_path, notice: "Prensa guardado correctamente"
    else
      render :new
    end
  end

  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  def update
    @newsletter = Newsletter.find(params[:id])
    if @newslleter.update(newsletter_params)
      redirect_to root_path, notice: "Prensa modificada correctamente"
    else
      render :edit
    end
  end

  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
    redirect_to root_path, notice: "Prensa borrada correctamente"
  end

private
  def newsletter_params
    params.require(:newsletter).permit(:title, :text, :url)
  end
end
