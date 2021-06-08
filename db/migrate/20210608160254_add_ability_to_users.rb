class AddAbilityToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :ability, :string
  end
end
