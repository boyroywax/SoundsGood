json.(@like_songs) do |song|
  json.song_id song.id
  # json.likes song.favorited_by?(current_user)


json.audio do

    json.name song.name
    json.artist song.intro
    json.cover song.image_url
    json.theme '#ebd0c2'
    json.url song.track_url
end
end