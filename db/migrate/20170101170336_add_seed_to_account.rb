class AddSeedToAccount < ActiveRecord::Migration[5.0]
  def change
    add_column :accounts, :seed, :integer, null: false, default: 1
  end
end
