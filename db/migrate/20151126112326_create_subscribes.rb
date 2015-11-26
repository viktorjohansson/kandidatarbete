class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
      t.string :keyword
      t.references :user, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
