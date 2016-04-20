class URL < ActiveRecord::Base
	# This is Sinatra! Remember to create a migration!
	before_create :random_url
	validates :original_long_url_text, presence: true

	def shorten
		def shorten
    self.short_url = ([*('A'..'Z'), *('0'..'9'), *('a'..'z')]-%w(0 1 I O)).sample(8).join
	end

	# def random_url
	# 	url = SecureRandom.urlsafe_base64 #http://ruby-doc.org/stdlib-2.1.2/libdoc/securerandom/rdoc/SecureRandom.html
	# 	url
	# end

	
end

# class Url < ActiveRecord::Base
# 	# This is Sinatra! Remember to create a migration!

#   validates :long_url, :format => {:with => /(((ftp|http|https):\/\/)|(\/)|(..\/))(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?/}

#   def self.shorten
#     ref_array = (0..9).to_a + ('a'..'z').to_a + ('A'..'Z').to_a
#     output_array = []
#     8.times { |x| output_array << ref_array.sample }
#     output_array.join("")
#   end

# end
