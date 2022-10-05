To download a playlist with correct track numbering:
youtube-dl -i -o '%(playlist_index)s. %(title)s.m4a' PLAYLIST_NAME

To retry a failed download:
youtube-dl -i -o '%(playlist_index)s. %(title)s.m4a' --playlist-items 1,2,3 PLAYLIST_NAME
