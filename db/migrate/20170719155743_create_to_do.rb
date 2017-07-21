class CreateToDo < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.boolean :emailed
      t.boolean :responded
      t.string :note
      t.belongs_to :favejob, index: true
    end
  end
end
