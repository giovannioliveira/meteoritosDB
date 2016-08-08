require 'util'

ActiveAdmin.register City do

  actions :all
  permit_params :state_id, :name, :code, :lat, :lon

  index do
    selectable_column
    column :state
    bip_set(["name", "code", "lat", "lon"], binding)
    actions
  end

end
