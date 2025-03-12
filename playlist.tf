resource "spotify_playlist" "Metal" {
    name = "Metal core"
    tracks = ["37i9dQZF1DZ06evO0lb5gk"]
}

#data "spotify_search_track" "metallica" {
#    artist= "Metallica"
#    query="fuel"
#    limit =6
#}

data "spotify_search_track" "slipknot" {
    artist = "Slipknot"
    limit=5
}

resource "spotify_playlist" "fuel" {
    name = "Metal"

    tracks = concat(
        data.spotify_search_track.metallica.tracks[*].id,
        data.spotify_search_track.slipknot.tracks[*].id
    )
}

#resource "spotify_playlist" "fuel"{
#    name="Fuel"
#    tracks=[data.spotify_search_track.metallica.tracks[0].id,
#    data.spotify_search_track.metallica.tracks[1].id,
#    data.spotify_search_track.metallica.tracks[2].id]
#}