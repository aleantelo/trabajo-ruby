class TurnsController < ApplicationController

    def new
        @turn = Turn.new
    end

    def index
        @turns = Turn.where(user_id: Current.user.id).order(created_at: :desc)
    end

    def show
        turn
    end

    def create
        @turn = Current.user.turns.new(turn_params)
        if @turn.save
            redirect_to turns_path, notice: t('.created')
        else
            render :new, status: :unprocessable_entity
        end
    end
 
    def edit
        authorize! turn
    end

    def update
        authorize! turn
        if turn.update(turn_params)
            redirect_to turns_path, notice: t(".updated")
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        authorize! turn
        turn.destroy
        redirect_to turns_path, notice: t(".destroyed")
    end
    
    private

    def turn_params
        params.require(:turn).permit( :fecha, :hora, :estado, :motivo, :sucursal_id)
    end

    def turn
        @turn = Turn.find(params[:id])
    end

    
end