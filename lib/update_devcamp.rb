module UpdateDevcamp
  def self.patch(hand_raise)
    params = {
      'hand_raise[resolution]' => hand_raise.resolution,
      'hand_raise[status]' => hand_raise.status,
      'hand_raise[ta_name]' => hand_raise.ta_name,
      'hand_raise[ta_email]' => hand_raise.ta_email
    }

    credentials = {
      :username => ENV.fetch('DEVCAMP_CLIENT_SOURCE_APP'),
      :password => ENV.fetch('DEVCAMP_API_SECRET_KEY')
    }

    options = {
      query: params,
      basic_auth: credentials
    }

    HTTParty.patch(
      "#{ENV.fetch('DEVCAMP_HAND_RAISE_API')}/#{hand_raise.guide_id}",
      options
    )
  end
end
