resource "spotify_playlist" "Metal" {
    name = "Metal core"
    tracks = ["37i9dQZF1DZ06evO0lb5gk"]
}

# ✅ Add the missing Metallica search block
data "spotify_search_track" "metallica" {
    artist = "Metallica"
    query = "fuel"
    limit = 5
}

# ✅ Add the Slipknot search block
data "spotify_search_track" "slipknot" {
    artist = "Slipknot"
    limit = 5
}

# ✅ Create a playlist with both Metallica and Slipknot tracks
resource "spotify_playlist" "fuel" {
    name = "Fuel"

    tracks = concat(
        data.spotify_search_track.metallica.tracks[*].id,
        data.spotify_search_track.slipknot.tracks[*].id
    )
}
