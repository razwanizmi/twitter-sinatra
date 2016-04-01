get '/tweets/new' do
  erb :"tweet/new_tweet"  
end

post '/tweets' do
  tweet = Tweet.new(params[:tweet])
  if tweet.save
    redirect '/'
  else
    @error = tweet.errors.full_messages.first
    erb :"tweet/new_tweet"
  end
end