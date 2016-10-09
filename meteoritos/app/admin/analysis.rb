ActiveAdmin.register Analysis do

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
  permit_params :meteorite, :citation, :notes
  form do |f|
    f.inputs do
      f.input :meteorite
      f.input :citation, as: :select, fields: [:title,:authors]
      f.input :notes
    end
    f.has_many :element_analisises
    f.actions
  end
end
