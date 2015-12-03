module ApplicationHelper

	def bip(model, column, type = "input")
		best_in_place_if admin_signed_in?, model, 
				column, url: model.class.table_name.to_s + '/' + model.id.to_s,
				as: type
	end

	def bip_url(model, column, url, show = true, type = "input")
		if show || admin_signed_in?
			best_in_place_if admin_signed_in?, model, 
					column, url: url + '/' + model.id.to_s,
					:as => type
		end
	end

	def cms_delete(model, url = false)
		if admin_signed_in?
			if url == false
	      link_to 'Delete', model.class.table_name.to_s + '/' + model.id.to_s, 
	      		method: :delete, data: { confirm: 'Are you sure?' }
    	else
    		link_to 'Delete', url + '/' + model.id.to_s, 
	      		method: :delete, data: { confirm: 'Are you sure?' }
    	end
    end
	end

	def cms_add(path, text)
		if admin_signed_in?
      link_to text, path, method: :create
    end
	end

	def cms_upload(model, type, text)
		if admin_signed_in?
			capture do
	      form_for model, url: model.class.table_name.to_s + '/' + model.id.to_s, 
	      		:html => { :multipart => true } do |form|
	        concat form.label text
	        concat form.file_field type
	        concat form.submit
	      end
	    end
    end
	end

	def cms_upload_url(model, type, text, url)
		if admin_signed_in?
			capture do
	      form_for model, url: url + '/' + model.id.to_s, 
	      		:html => { :multipart => true } do |form|
	        concat form.label text
	        concat form.file_field type
	        concat form.submit
	      end
	    end
    end
	end

	def login_text(text)
		if admin_signed_in?
			text.html_safe
		end
	end

end
