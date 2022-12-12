class SucursalsController < ApplicationController

  def index
    @sucursals = Sucursal.all
  end

  def new
    @sucursal = Sucursal.new
  end

  def edit
    sucursal
    horarios
  end

  def create
    @sucursal = Sucursal.new({
      :nombre => sucursal_params["nombre"], :direccion => sucursal_params["direccion"], :telefono => sucursal_params["telefono"]
      })
      if @sucursal.save
        create_horario @sucursal
        redirect_to sucursals_url, notice: t('.created') 
      else
        render :new, status: :unprocessable_entity 
      end
  end

  def update
    if sucursal.update(:nombre => sucursal_params["nombre"], :direccion => sucursal_params["direccion"], :telefono => sucursal_params["telefono"])
      redirect_to sucursals_url, notice: t(".updated") 
    else
      render :edit, status: :unprocessable_entity 
    end
  end

  def show 
    sucursal
  end

  def destroy
      begin
        sucursal.destroy
      rescue
        redirect_to sucursals_url, alert: t(".not_destroyed") 
      else
      redirect_to sucursals_url, notice: t(".destroyed") 
      end
  end

  private
    def sucursal
      @sucursal = Sucursal.find(params[:id])
    end

    def sucursal_params
      params.require(:sucursal).permit(:nombre, :direccion, :telefono, :inicio_lunes, :inicio_martes, :inicio_miercoles, :inicio_jueves, :inicio_viernes,
         :fin_lunes, :fin_martes, :fin_miercoles, :fin_jueves, :fin_viernes)
    end

    def horarios
      @horarios = sucursal.horarios
    end
    
    def create_horario sucursal
      @horario = Horario.create(:inicio => sucursal_params["inicio_lunes"], :fin => sucursal_params["fin_lunes"])
      SucursalHorario.create(:sucursal => sucursal, :horario => @horario, :dia => "Lunes")
      @horario = Horario.create(:inicio => sucursal_params["inicio_martes"], :fin => sucursal_params["fin_martes"])
      SucursalHorario.create(:sucursal => sucursal, :horario => @horario, :dia => "Martes")
      @horario = Horario.create(:inicio => sucursal_params["inicio_miercoles"], :fin => sucursal_params["fin_miercoles"])
      SucursalHorario.create(:sucursal => sucursal, :horario => @horario, :dia => "Miercoles")
      @horario = Horario.create(:inicio => sucursal_params["inicio_jueves"], :fin => sucursal_params["fin_jueves"])
      SucursalHorario.create(:sucursal => sucursal, :horario => @horario, :dia => "Jueves")
      @horario = Horario.create(:inicio => sucursal_params["inicio_viernes"], :fin => sucursal_params["fin_viernes"])
      SucursalHorario.create(:sucursal => sucursal, :horario => @horario, :dia => "Viernes")
    end
end
