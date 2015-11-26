class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :message
      t.text :reply
      t.int :status
      t.references :user, index: true, foreign_key: true
      t.references :company, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
