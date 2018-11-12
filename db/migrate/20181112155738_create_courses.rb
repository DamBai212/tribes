class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :title
      t.string :category
      t.datetime :created_on

      t.timestamps
    end
  end
end
