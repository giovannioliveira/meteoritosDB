ActiveAdmin.register Citation do

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
  permit_params :ctype,:authors,:title,:year,:url,:notes
  form do |f|
    f.inputs do
      f.input :ctype
      f.input :authors
      f.input :title
      f.input :year
      f.input :url
      f.input :notes

    end
    f.actions
  end
end
