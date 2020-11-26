class DosesController < ApplicationController
  def index
    @doses = Dose.all
  end

  def create
    @dose = Dose.new(create_dose_by_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktails_path
  end

  def create_dose_by_params
    params.require(:dose).permit(:ingredient_id, :description)
  end
end
