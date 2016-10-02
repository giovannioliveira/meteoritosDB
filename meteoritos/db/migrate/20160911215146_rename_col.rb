class RenameCol < ActiveRecord::Migration
  def change
    rename_column :meteorites, :group_id, :mgroup_id
  end
end
