class CreateCommentaires < ActiveRecord::Migration[5.0]
  def change
    create_table :commentaires do |t|
      t.string :titre
      t.string :libelle
      t.references :user, foreign_key: true

      t.references :voyage, foreign_key: true
      t.timestamps
    end
  end
end
