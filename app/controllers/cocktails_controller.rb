class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show

    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    if Cocktail.create!(create_by_params)
      redirect_to cocktail_path(Cocktail.last)
    else
      render :new
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
  end

  def update
    @cocktail = Cocktail.find(params[:id])
    @cocktail.update(create_by_params)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to "/cocktails"
  end

  private

  def create_by_params
    params.require(:cocktail).permit(:name, :photo)
  end
end
