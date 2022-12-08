class SucursalsController < ApplicationController

  def index
    @sucursals = Sucursal.all
  end

  def new
    @sucursal = Sucursal.new
  end

  def edit
    sucursal
  end

  def create
    @sucursal = Sucursal.new(sucursal_params)

      if @sucursal.save
        redirect_to sucursals_url, notice: t('.created') 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
    if sucursal.update(sucursal_params)
      redirect_to sucursals_url, notice: t(".updated") 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def destroy
      sucursal.update(:borrado => "S")
      redirect_to sucursals_url, notice: t(".destroyed") 
  end

  private
    def sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    def sucursal_params
      params.require(:sucursal).permit(:nombre, :direccion, :telefono)
    end

end
