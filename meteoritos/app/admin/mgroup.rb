require 'util'
ActiveAdmin.register Mgroup do

  menu parent: 'cls', priority: 2
  actions :all
  permit_params :mclass_id,:mgroup

  index do
    selectable_column
    column :mclass
    bip_set(["mgroup"], binding)
    actions
  end


end
