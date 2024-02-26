class AddScoringMachineToPolyVxDs < ActiveRecord::Migration[7.1]
  def change
    add_reference :poly_vx_ds, :scoring_machine, foreign_key: true, type: :uuid
  end
end
