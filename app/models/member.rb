class Member < ApplicationRecord

  def self.social_media_links
    Member.all.each do |member|
      if member.facebook_account
        fb_path = 'https://www.facebook.com/'
        fb_account = member.facebook_account
        fb_page = fb_path + fb_account.to_s
        member.update(facebook_account: fb_page)
      end

      if member.twitter_account
        twitter_path = 'https://www.twitter.com/'
        twitter_account = member.twitter_account
        twitter_page = twitter_path + twitter_account.to_s
        member.update(twitter_account: twitter_page)
      end

      next unless member.youtube_account

      youtube_path = 'https://www.youtube.com/user/'
      youtube_account = member.youtube_account
      youtube_page = youtube_path + youtube_account.to_s
      member.update(youtube_account: youtube_page)
    end
  end

  def self.test_url(url)
    if Faraday.head(url).status == 200
      url
    else
      url = nil
    end
  end
end
