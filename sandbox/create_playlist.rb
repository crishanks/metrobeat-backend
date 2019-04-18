# require 'rest_client'

# playlist_name = "MetroBeat"
# spotify_id = "chanks5"

# access_token="BQD-iMo-r-IL1sK42iJnQBSXoLLTHz3X7wqaX-OPdtJzovNtSEPiAsNTD2w_BiGDeLk2OeMF1M1eBH950hFUrF5E0S_aiCkalNH9gUUVZVVRAY4_gBJfsQ4B6wP3O7W4hKZuSJl06UoodzQRVfVQsZxtVfLjBM7y6NTPeGDV_ibe4r6SiV3Y9Zp3T8DNqI9ykavA4TA3BXrP8qW0sRikZUkPWDz00ZWlAlRODFZI0Eu33o-nlA"
# url = 'https://api.spotify.com/v1/users/' + spotify_id + '/playlists'

# request_params = {
#   method: 'POST',
#   header: {
#     Authorization: "Bearer #{access_token}",
#     'Content-Type': 'application/json'
#   },
#   body: {
#     name: playlist_name
#   }
# }

# response = RestClient.post(url, request_params)
# puts response
# playlist = JSON.parse(response.body)
# puts playlist