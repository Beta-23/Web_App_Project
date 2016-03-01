class CreateTypeAllergies < ActiveRecord::Migration
  def change
    create_table :type_allergies do |t|
      t.string :user
      t.string :type_allergy

      t.timestamps null: false
    end
  end
end
