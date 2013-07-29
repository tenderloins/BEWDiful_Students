class UrlsController < ApplicationController
  
  def index
    @url = Url.new
    @urls = Url.all
  end
  
  def create
    @url = Url.new(params.require(:url).permit(:original_link))
    @url.new_link = SecureRandom.urlsafe_base64(8)
    #@url.new_link = (0..9).map{ rand(36).to_s(36) }.join
    if @url.save
      render 'show'
    else
      @urls = Url.all
      render 'index'
    end
  end
  
  def redirect
    get_by_hash
    redirect_to @url.original_link
  end
  
  def preview
    get_by_hash
  end
  
  
  protected
  
  def get_by_hash
    @url = Url.find_by new_link: params[:new_link]
  end
     

end
