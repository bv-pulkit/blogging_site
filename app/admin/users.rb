ActiveAdmin.register User do
	index do
		column :email, sortable: :title
		actions do |user|
			item "users", admin_user_path(user)
		end
		column :user
		column :articles_count do |user|
			user.articles.count
		end
	end

	show do
		attributes_table do
			row :email
			row :created_at
			row :Article_Count do |user|
				link_to "#{ user.articles.count }",admin_articles_path("q[id_equals]" => article.user_id)
			end
		end
	end
	# See permitted parameters documentation:
	# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
	#
	# Uncomment all parameters which should be permitted for assignment

	# permit_params :email, :password_digest, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at
	# or
	#
	#permit_params do
	#permitted = [:email, :password_digest, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at]
	#permitted << :other if params[:action] == 'create' && current_user.admin?
	#permitted
	#end
end
