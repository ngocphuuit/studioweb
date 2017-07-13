ActiveAdmin.register Image do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :url, :present_flg, :album_id
# mount_uploader :url, ImageUploader
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form(:html => { :multipart => true }) do |f|
    f.inputs "Create Product..." do
      f.input :album_id
      f.input :url, :as => :file, :hint => f.template.image_tag(f.object.url.url(:thumb))
      f.input :present_flg
    end
    f.actions
  end


end
