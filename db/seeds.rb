# senators
@response = Faraday.get 'https://api.propublica.org/congress/v1/116/senate/members.json' do |req|
  req.headers['X-API-KEY'] = Rails.application.credentials[:propublica_api_key]
end
senate_data = JSON.parse(@response.body)
senators = senate_data['results'][0]['members']

# empty string values are assigned in model
# update seeds w/o adding duplicates/ dropping db
senators.each do |senator|
  Member.create!(
    chamber: 'senate',
    member_id: senator['id'],
    title: senator['title'],
    short_title: senator['short_title'],
    first_name: senator['first_name'],
    last_name: senator['last_name'],
    full_name: '',
    title_and_name: '',
    age: '',
    date_of_birth: senator['date_of_birth'],
    gender: senator['gender'],
    party: senator['party'],
    party_full_name: '',
    image_url: '',
    twitter_account: senator['twitter_account'],
    facebook_account: senator['facebook_account'],
    youtube_account: senator['youtube_account'],
    website: senator['url'],
    contact_form: senator['contact_form'],
    seniority: senator['seniority'],
    next_election: senator['next_election'],
    office: senator['office'],
    phone: senator['phone'],
    phone_clickable: senator['phone_clickable'],
    state: senator['state'],
    state_full_name: senator['state_full_name'],
    missed_votes_pct: senator['missed_votes_pct'],
    votes_with_party_pct: senator['votes_with_party_pct'],
    )
end

# house members
@response = Faraday.get 'https://api.propublica.org/congress/v1/116/house/members.json' do |req|
  req.headers['X-API-KEY'] = Rails.application.credentials[:propublica_api_key]
end
house_data = JSON.parse(@response.body)
representatives = house_data['results'][0]['members']

# update seeds w/o adding duplicates/ dropping db
representatives.each do |representative|
  Member.create!(
    chamber: 'house',
    member_id: representative['id'],
    title: representative['title'],
    short_title: representative['short_title'],
    first_name: representative['first_name'],
    last_name: representative['last_name'],
    full_name: '',
    title_and_name: '',
    date_of_birth: representative['date_of_birth'],
    age: '',
    gender: representative['gender'],
    party: representative['party'],
    party_full_name: '',
    image_url: '',
    twitter_account: representative['twitter_account'],
    facebook_account: representative['facebook_account'],
    youtube_account: representative['youtube_account'],
    website: representative['url'],
    contact_form: representative['contact_form'],
    seniority: representative['seniority'],
    next_election: representative['next_election'],
    office: representative['office'],
    phone: representative['phone'],
    phone_clickable: representative['phone_clickable'],
    state: representative['state'],
    state_full_name: representative['state_full_name'],
    missed_votes_pct: representative['missed_votes_pct'],
    votes_with_party_pct: representative['votes_with_party_pct'],
    )
end

Member.calculate_age
Member.social_media_links
Member.full_state_name
Member.full_party_name
Member.clickable_phone_number
Member.set_full_name
Member.set_title_and_name