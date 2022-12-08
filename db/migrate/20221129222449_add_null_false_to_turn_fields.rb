class AddNullFalseToTurnFields < ActiveRecord::Migration[7.0]
  def change
    change_column_null :turns, :fecha, false
    change_column_null :turns, :hora, false
    change_column_null :turns, :estado, false

  end
end
