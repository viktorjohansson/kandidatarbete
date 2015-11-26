class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.references :owner, index: true, foreign_key: true
      t.references :owner_company, index: true, foreign_key: true
      t.references :candidate, index: true, foreign_key: true
      t.references :candidate_company, index: true, foreign_key: true
      t.int :status

      t.timestamps null: false
    end
  end
end
