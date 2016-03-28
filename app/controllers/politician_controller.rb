class PoliticianController < ApplicationController

  #ADMIN
  def list
    @politicians = Politician.all
    render 'admin/politicians/list'
  end

  def show
    @politician = Politician.find(params[:id])
    render 'admin/politicians/show'
  end

  def new
    @politician = Politician.new
    render 'admin/politicians/form'
  end

  def create
    @politician = Politician.new(politician_params)
    if @politician.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
    @politician = Politician.find(params[:id])
    render 'admin/politicians/edit'
  end

  def update
    @politician = Politician.find(params[:id])
    if @politician.update_attributes(politician_param)
      redirect_to :action => 'list'
    else
      render :action => 'edit'
    end
  end

  def delete
    @politician.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def politician_params
    params.require(:politicians).permit(:name, :party, :office, :like, :hate, :scared, :image_link)
  end

  def politician_param
    params.require(:politician).permit(:name, :party, :office, :like, :hate, :scared, :image_link)
  end


  #WEBSITE
  def renderPolitics
    @politicians = Politician.all
    render 'pages/politics'
  end

end
