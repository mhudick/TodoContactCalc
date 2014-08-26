class CreateMikeHudickSamples < ActiveRecord::Migration
  def change
    create_table :mike_hudick_samples do |t|
      t.string :name

      t.timestamps
    end
  end
end
