class CreateDistilleries < ActiveRecord::Migration[6.0]
  def change
    create_table :distilleries do |t|
      t.string :name
      t.boolean :in_store

      t.timestamps
    end
  end
end
