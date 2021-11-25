class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :body
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
