ActiveAdmin.register Product do
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

  permit_params :sku,
                :name,
                :description,
                :quantity,
                :active,
                :category_id,
                :price,
                :width,
                :diameter,
                :height,
                :length,
                :weight,
                :volume,
                :size,
                :resistance,
                :colour,
                :material,
                :max_weight,
                :finish,
                :image,
                :new,
                :sale,
                :sale_price
end
