class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :message
      t.int :rating
      t.references :sender, index: true, foreign_key: true
      t.references :sender_company, index: true, foreign_key: true
      t.references :recipient, index: true, foreign_key: true
      t.references :recipient_company, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
