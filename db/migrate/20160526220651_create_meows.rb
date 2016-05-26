class CreateMeows < ActiveRecord::Migration
  def change
    create_table :meows do |t|
      t.string :word

      t.timestamps null: false
    end
  end
end
