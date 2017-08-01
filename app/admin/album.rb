ActiveAdmin.register Album do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :status, :image, :top_flg, :width
config.per_page = 10
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index pagination_total: false do
    selectable_column
    id_column
    column :title
    column :description
    column :status
    column "Image" do |album|
      image_tag album.image, class: 'my_image_size'
    end
    column :top_flg
    actions
    # render "some_partial"
  end

  # /admin/albums/:id/images
  member_action :images do
    @images = resource.images
    # This will render app/views/admin/albums/images.html.erb
  end


end
