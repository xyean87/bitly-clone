# class CreateUrls < ActiveRecord::Migration
# 	def change
# 		create_table :urls do |t|
# 			t.string :shorten_url_text
# 			t.string :original_long_url_text
# 		end
# 	end
# end

class CreateUrls < ActiveRecord::Migration
	def change
		create_table :urls do |x|
			x.string :long_url
			x.string :short_url
		end
	end
end
