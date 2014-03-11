class CreateInstalls < ActiveRecord::Migration
  def change
    create_table :installs do |t|
      t.string :content

      t.timestamps
    end
  end
end
