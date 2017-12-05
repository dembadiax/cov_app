class CreateVoyageurs < ActiveRecord::Migration[5.0]
  def change
    create_table :voyageurs do |t|
      t.references :user, foreign_key: true
      t.references :voyage, foreign_key: true

      t.timestamps
    end
  end
end
