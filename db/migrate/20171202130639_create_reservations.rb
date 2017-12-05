class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.string :etat
      t.references :voyageur, foreign_key: true
      t.references :voyage, foreign_key: true
      t.references :voyagiste, foreign_key: true

      t.timestamps
    end
  end
end
