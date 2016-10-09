ActiveAdmin.register SpecimenTransaction do

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
      f.input :specimen
      f.input :code
      f.input :transaction_type
      f.input :transaction_date
      f.input :mass_balance
      f.input :party
      f.input :counterparty
      f.input :description
      f.input :transaction_status

    end
    f.actions
  end


end
