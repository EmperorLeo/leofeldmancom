class PoliticianController < ApplicationController

  #ADMIN
  def list
    @politicians = Politician.all
    render 'admin/politician/list'
  end

  def show
    @politician = Politician.find(params[:id])
    render 'admin/politician/show'
  end

  def new
    @politician = Politician.new
    render 'admin/politician/form'
  end

  def create
    @politician = Politician.new
  end


  def politician_params
    params.require(:politicians).permit(:name, :party, :office, :like, :hate, :scared, :image_link)
  end

  def politician_params
    params.require(:politician).permit(:name, :party, :office, :like, :hate, :scared, :image_link)
  end


  #WEBSITE
  def renderPolitics

  end

end
