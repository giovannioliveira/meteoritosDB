ActiveAdmin.register Party do

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
  form do |f|
    f.inputs do
      f.input :name
      f.input :institution
      f.input :department
      f.input :role
      f.input :location
      f.input :address
      f.input :zip
      f.input :phone
      f.input :fax
      f.input :email

    end
    f.actions
  end

end
