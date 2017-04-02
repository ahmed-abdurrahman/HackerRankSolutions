//: Playground - noun: a place where people can play

import UIKit
@testable import HackerRank



var magText = "give me android one grand today night"
let rNote = "give one android grand today"

//let canUse = RansomNote().canUseMagazine(magText: magText, ransomNote: rNote)
let randomNote = RansomNote()
let canUse = randomNote.canUseMagazineWithMaps(magText: magText, ransomNote: rNote)
print(canUse ? "Yes" : "No")

randomNote.buildWordCountMap(array: ["Hi","Hi","there"])



