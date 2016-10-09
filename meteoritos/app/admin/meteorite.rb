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
  permit_params :code, :altcode, :name, :altname, :classification, :mass, :fall, :event_date, :location, :latitude, :longitude, :url, :notes
  form do |f|
    f.inputs do
      f.input :code
      f.input :altcode
      f.input :name
      f.input :altname
      f.input :classification
      f.input :mass
      f.input :fall
      f.input :event_date
      f.input :location
      f.input :latitude
      f.input :longitude
      f.input :url
      f.input :notes

    end
    f.actions
  end

end
