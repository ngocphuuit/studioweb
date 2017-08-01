ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :url, :present_flg, :album_id
config.per_page = 10
# mount_uploader :url, ImageUploader
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
    column "Image" do |product|
      image_tag product.url, class: 'my_image_size'
    end
  end
  # show do
  #   h3 image.url
  # end
  form(:html => { :multipart => true }) do |f|
    f.inputs "Create Product..." do
      f.input :album
      f.input :url, :as => :file, input_html: { multiple: true }
      # f.input :url, :as => :file, :hint => f.template.image_tag(f.object.url.url(:thumb))
      f.input :present_flg
    end
    f.actions
  end

  collection_action :preview, only: :new, name: 'preview_button' do
    "asdad"
  end


end
