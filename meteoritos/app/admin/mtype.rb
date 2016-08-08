require 'util'

ActiveAdmin.register Mtype do

  menu parent: 'cls', priority: 0
  actions :all
  permit_params :mtype

  index do
    selectable_column
    bip_set(["mtype"], binding)
    actions
  end


end
