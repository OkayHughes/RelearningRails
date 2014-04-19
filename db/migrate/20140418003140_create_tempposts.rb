class CreateTempposts < ActiveRecord::Migration
  def change
    create_table :tempposts do |t|
      t.string :title
      t.string :text

      t.timestamps
    end
  end
end
