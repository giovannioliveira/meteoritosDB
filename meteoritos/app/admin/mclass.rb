require 'util'
ActiveAdmin.register Mclass do

  menu parent: 'cls', priority: 1
  actions :all
  permit_params :mtype_id,:mclass

  index do
    selectable_column
    column :mtype
    bip_set(["mclass"], binding)
    actions
  end


end
