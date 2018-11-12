class CreateLectures < ActiveRecord::Migration[5.2]
  def change
    create_table :lectures do |t|
      t.string :title
      t.string :category
      t.text :summary
      t.integer :position
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
