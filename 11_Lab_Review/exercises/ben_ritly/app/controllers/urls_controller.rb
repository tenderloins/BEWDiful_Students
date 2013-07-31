class UrlsController < ApplicationController
  def new
    @url = Url.new
  end

  def create
    @url = Url.new params.require(:url).permit(:link)
    @url.generate_short_code
    if @url.save
      redirect_to url_path(@url)
    else
      render 'new'
    end
  end

  def show
    @url = Url.find(params[:id])
  end

  def redirect
    @url = Url.where(:short_code => params[:short_code]).first
    redirect_to @url.long_link
  end
end
