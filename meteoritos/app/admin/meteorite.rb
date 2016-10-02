ActiveAdmin.register Meteorite do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  menu parent:'met', priority: 0
  actions :all
  permit_params :cod, :extcod, :name, :synonyms, :mgroup_id, :fall_date,
                :observed, :country_id, :state_id, :city_id, :mass, :lat, :lon, :info
  form do |f|
    f.semantic_errors
    f.inputs 'Identification' do
      f.input :cod
      f.input :extcod, as: :tags
      f.input :name
      f.input :synonyms, as: :tags
    end
    f.inputs 'Fall information' do
      f.input :fall_date
      f.input :observed
      f.input :mass
      f.input :country_id, as: :select, collection: Country.all
      f.input :state_id
      f.input :city_id
      f.input :lat
      f.input :lon
    end
    f.inputs 'Analysis' do
      f.input :mgroup_id, as: :select, collection: Mgroup.all
    end
    f.inputs do
      f.input :info, as: :text
    end

    f.actions
  end
end
