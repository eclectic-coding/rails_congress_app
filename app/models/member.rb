class Member < ApplicationRecord

  def self.calculate_age
    Member.all.each do |member|
      now = Time.now.utc.to_date
      dob = member.date_of_birth.to_date

      age = now.year - dob.year - (now.month > dob.month || (now.month == dob.month && now.day >= dob.day) ? 0 : 1)

      member.update(age: age)
    end
  end

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

      if member.youtube_account
        youtube_path = 'https://www.youtube.com/user'
        youtube_account = member.youtube_account
        youtube_page = youtube_path + youtube_account.to_s
        member.update(youtube_account: youtube_page)
      end

    end
  end

  def self.full_state_name
    states = [['AK', 'Alaska'],
              ['AL', 'Alabama'],
              ['AR', 'Arkansas'],
              ['AS', 'American Samoa'],
              ['AZ', 'Arizona'],
              ['CA', 'California'],
              ['CO', 'Colorado'],
              ['CT', 'Connecticut'],
              ['DC', 'District of Columbia'],
              ['DE', 'Delaware'],
              ['FL', 'Florida'],
              ['GA', 'Georgia'],
              ['GU', 'Guam'],
              ['HI', 'Hawaii'],
              ['IA', 'Iowa'],
              ['ID', 'Idaho'],
              ['IL', 'Illinois'],
              ['IN', 'Indiana'],
              ['KS', 'Kansas'],
              ['KY', 'Kentucky'],
              ['LA', 'Louisiana'],
              ['MA', 'Massachusetts'],
              ['MD', 'Maryland'],
              ['ME', 'Maine'],
              ['MI', 'Michigan'],
              ['MN', 'Minnesota'],
              ['MO', 'Missouri'],
              ['MS', 'Mississippi'],
              ['MT', 'Montana'],
              ['NC', 'North Carolina'],
              ['ND', 'North Dakota'],
              ['NE', 'Nebraska'],
              ['NH', 'New Hampshire'],
              ['NJ', 'New Jersey'],
              ['NM', 'New Mexico'],
              ['NV', 'Nevada'],
              ['NY', 'New York'],
              ['OH', 'Ohio'],
              ['OK', 'Oklahoma'],
              ['OR', 'Oregon'],
              ['PA', 'Pennsylvania'],
              ['PR', 'Puerto Rico'],
              ['RI', 'Rhode Island'],
              ['SC', 'South Carolina'],
              ['SD', 'South Dakota'],
              ['TN', 'Tennessee'],
              ['TX', 'Texas'],
              ['UT', 'Utah'],
              ['VA', 'Virginia'],
              ['VI', 'Virgin Islands'],
              ['VT', 'Vermont'],
              ['WA', 'Washington'],
              ['WI', 'Wisconsin'],
              ['WV', 'West Virginia'],
              ['WY', 'Wyoming']]

    Member.all.each do |member|
      states.each do |state|
        member.update(state_full_name: state[1]) if member.state == state[0]
      end
    end
  end

  def self.full_party_name
    Member.all.each do |member|
      if member.party == 'D'
        member.update(party_full_name: 'Democrat')
        elsif member.party == 'R'
          member.update(party_full_name: 'Republican')
          elsif member.party == 'ID'
            member.update(party_full_name: 'Independent')
      end
    end
  end

  def self.clickable_phone_number
    Member.all.each do |member|
      member.update(phone_clickable: member.phone.to_s.gsub('-', ''))
    end
  end

  def self.set_full_name
    Member.all.each do |member|
      member.update(full_name: member.first_name + ' ' + member.last_name)
    end
  end

  def self.set_title_and_name
    Member.all.each do |member|
      member.update(title_and_name: member.short_title + ' ' + member.full_name)
    end
  end

end
