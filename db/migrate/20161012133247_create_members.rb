class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :path
      t.string :position
      t.string :bio

      t.timestamps
    end
  end
end
