ActiveAdmin.register Blog do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :content, :description, :image, :top_flg, :status
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  form(:html => { :multipart => true }) do |f|
    f.inputs "Create Blog..." do
      f.input :title
      f.input :description
      f.input :content, :as => :ckeditor
      f.input :image, :as => :file, input_html: { multiple: true }
      # f.input :url, :as => :file, :hint => f.template.image_tag(f.object.url.url(:thumb))
      f.input :top_flg
      f.input :status
    end
    f.actions
  end


end
