class CreateTrajets < ActiveRecord::Migration[5.0]
  def change
    create_table :trajets do |t|
      t.datetime :date
      t.string :lieux_depart
      t.string :lieux_arrivee
      t.string :etat
      t.string :nombre_places
      t.string :nombre_valises
      t.string :heure_depart
      t.string :heure_arivee
      t.string :frequence

      #t.references :voyagiste, foreign_key: true

      t.timestamps
    end
  end
end
