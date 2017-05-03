//: Playground - noun: a place where people can play

import UIKit

//assume we have a list of items called tracks
let tracks = ["a","b","c","d","e"]

//algorithm should return this playlist if we select track "d"
["d","e","a","b","c"]

//First approach using For Loop

let selectedTrack = "c"
var playlist = [String]()
var priorTracks = [String]()

for track in tracks {
    //keep on gathering the tracks to append
    if track == selectedTrack || playlist.count > 0 {
        playlist.append(track)
    } else {
        priorTracks.append(track)
    }
}
priorTracks
playlist

playlist + priorTracks


//Different approach without using For Loop:

let index = tracks.index(where: {return $0 == selectedTrack})
let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)

let newArray = suffixArray + prefixArray