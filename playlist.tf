resource "spotify_playlist" "Metal" {
    name = "Metal core"
    tracks = ["37i9dQZF1DZ06evO0lb5gk"]
}

# Corrected: Removed 'query' argument
data "spotify_search_track" "metallica" {
    artist = "Metallica"
    limit = 6
}

data "spotify_search_track" "slipknot" {
    artist = "Slipknot"
    limit = 5
}

resource "spotify_playlist" "fuel" {
    name = "Metal"

    tracks = concat(
        data.spotify_search_track.metallica.tracks[*].id,
        data.spotify_search_track.slipknot.tracks[*].id
    )
}
