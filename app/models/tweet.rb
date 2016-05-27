class Tweet < ActiveRecord::Base

  def tweet_ids
    Tweet.all.map(&:id)
  end

  def bad_method
    'this is a bad method' if id
  end
end
