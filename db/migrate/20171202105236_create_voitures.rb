class CreateVoitures < ActiveRecord::Migration[5.0]
  def change
    create_table :voitures do |t|
      t.string :matricule
      t.string :marque
      t.string :modele
      t.integer :annee
      t.boolean :climatisation
      t.integer :nombre_places

      t.timestamps
    end
  end
end
