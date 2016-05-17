class Tweet < ActiveRecord::Base

  def tweet_ids
    Tweet.all.map(&:id)
  end

  def bad_method
    if id
      return 'this is a bad method'
    end
  end
end
