# get '/' do
# 	# @urls = Url.all
#   erb :"static/index"
# end

# post '/urls' do
# 	url = Url.shorten
# 	@url = Url.create(original_long_url_text: params[:long_url], short_url: url)
	
# 	erb :"static/index"
# 	# if @url.save
# 	# 	@url
# 	# 	erb :"static/success"
# 	# else
# 	# 	@error_message = @url.errors.full_message
# 	# 	redirect "/?error=#{@error_message}"
# 	# end
# end

# get '/:short_url' do
# 	a= Url.all
# 	b = a.find_by(shorten_url_text: params[:short_url])
# 	url.click_count+=1
# 	url.save
# 	redirect "#{@original_long_url_text}"

# end

get '/' do
  erb :"static/index"
end

post '/urls' do
  @url = Url.new(long_url: params[:long_url])
  @url.shorten
  if @url.save
    @total_count = Url.where(long_url: params[:long_url]).sum(:counter)
    erb :"static/index"
  else
    erb :"static/error", locals: { error: url.errors.messages }
  end
end

get '/invalid' do
  erb :"static/invalidurl"
end

get '/:short_url' do
  a = Url.all
  b = a.find_by(short_url: params[:short_url])
  count = b.counter.to_i
  count += 1
  b.counter = count
  b.save
  redirect b.long_url
end

