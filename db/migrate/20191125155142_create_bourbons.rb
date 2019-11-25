class CreateBourbons < ActiveRecord::Migration[6.0]
  def change
    create_table :bourbons do |t|
      t.string :name
      t.string :type
      t.string :description
      t.belongs_to :distillery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
