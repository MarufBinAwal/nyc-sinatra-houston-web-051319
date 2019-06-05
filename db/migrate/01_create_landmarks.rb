class CreateLandmarks < ActiveRecord::Migration
  def change
    create_table :landmarks do |t|
      t.text :name
      t.integer :year_completed
      t.integer :figure_id
    end
  end
end
