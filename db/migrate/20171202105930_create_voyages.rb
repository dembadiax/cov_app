class CreateVoyages < ActiveRecord::Migration[5.0]
  def change
    create_table :voyagistes do |t|
      t.references :user, foreign_key: true
    #  t.references :voyage, foreign_key: true
      t.references :voiture, foreign_key: true

      t.timestamps
  end


    create_table :voyages do |t|
      t.string :lieux_depart
      t.string :lieux_arrivee
      t.integer :tarif
      t.string :monnaie
      t.boolean :peage
      t.string :etat
      t.datetime :heure_depart
      t.datetime :heure_arrivee

      t.references :voyagiste, foreign_key: true
      t.references :trajet, foreign_key: true

      t.timestamps
    end

  end
end
