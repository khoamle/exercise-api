class ChangeInstructionToTextFromExercises < ActiveRecord::Migration
  def change
    change_column :exercises, :instruction, :text
  end
end
