ActiveAdmin.register Article do
	index do
		selectable_column
		index_column
		column :title
		column :body
		column "User" do |article|
			link_to "#{article.user_id} : #{article.user.email}", admin_user_path(article.user_id)
		end
	end

	filter :title
	filter :user_id

	show do
			attributes_table do |article|
				row :title
				row :body
				#row "User Detail" do |article|
				#	link_to "#{article.user_id} : #{article.user.email}", admin_user_path(article.user_id)
				#end
		end
	end

	#	filter :email, :as => :select
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :title, :body, :user_id
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :body, :user_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
