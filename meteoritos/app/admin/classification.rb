ActiveAdmin.register Classification do

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
  permit_params :mtype,:mclassm,:mclan,:mgroup
  form do |f|
    f.inputs do
      f.input :mtype
      f.input :mclass
      f.input :mclan
      f.input :mgroup

    end
    f.actions
  end
end
