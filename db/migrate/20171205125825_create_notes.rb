class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :note
      t.string :remarques
      t.timestamps
    end

    add_reference :notes, :voyageur, foreign_key: true
    add_reference :notes, :voyage, foreign_key: true
  end
end
