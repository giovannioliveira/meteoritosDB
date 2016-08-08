require 'util'

ActiveAdmin.register Country do
  menu parent: 'loc', priority: 0
  actions :all
  permit_params :name, :code, :lat, :lon

  index do
    selectable_column
    bip_set(["name", "code", "lat", "lon"], binding)
    actions
  end

end
