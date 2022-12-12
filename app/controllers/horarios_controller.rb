class HorariosController < ApplicationController

    def edit
        horario
        
    end

    def update
        if horario.update(turn_params)
            redirect_to sucursals_path, notice: t(".updated")
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def show
        horarios
        @sucursal = Sucursal.find(params[:id])
        @sucursal_horario = @sucursal.sucursal_horario
    end

    private
    def horarios
        @sucursal = Sucursal.find(params[:id])
        @horarios = @sucursal.horarios
    end
end