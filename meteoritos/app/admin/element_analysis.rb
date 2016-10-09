ActiveAdmin.register ElementAnalysis do

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
  permit_params :analysis,:element,:min,:max
  form do |f|
    f.inputs do
      f.input :analysis
      f.input :element
      f.input :min
      f.input :max

    end
    f.actions
  end

end
