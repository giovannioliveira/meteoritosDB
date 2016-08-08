require 'util'

ActiveAdmin.register State do
  menu parent: 'loc', priority: 1
  actions :all
  permit_params :country_id, :name, :code, :lat, :lon

  index do
    selectable_column
    column :country
    bip_set(["name", "code", "lat", "lon"], binding)
    actions
  end

end

