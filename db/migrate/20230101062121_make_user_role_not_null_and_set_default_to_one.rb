class MakeUserRoleNotNullAndSetDefaultToOne < ActiveRecord::Migration[7.0]
  def up
    change_table :users do |t|
      t.change :role, :integer, default: 1, null: false
    end
  end

  def down
    change_table :users do |t|
      t.change :role, :integer, null: true
    end
  end
end
