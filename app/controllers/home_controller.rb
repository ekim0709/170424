class HomeController < ApplicationController
  def index
    @list = Salmon.all
  end
  
  def create
    @title = params[:title]
    @content = params[:content]

    new_salmonname = Salmon.new
    new_salmonname.name = @title
    new_salmonname.reason = @content

    new_salmonname.save
    
    redirect_to "/"
    
  end
end
