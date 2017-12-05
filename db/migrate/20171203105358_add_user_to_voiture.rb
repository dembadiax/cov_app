class AddUserToVoiture < ActiveRecord::Migration[5.0]
  def change
    add_reference :voitures, :user, foreign_key: true
  end
end
