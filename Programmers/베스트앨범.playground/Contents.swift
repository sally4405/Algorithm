import Foundation

struct Genre: Comparable {
    static func < (lhs: Genre, rhs: Genre) -> Bool {
        return lhs.count > rhs.count
    }
    var count: Int = 0
    var songList: [Song] = []
}

struct Song: Comparable {
    static func < (lhs: Song, rhs: Song) -> Bool {
        return lhs.plays == rhs.plays ? lhs.index < rhs.index : lhs.plays > rhs.plays
    }
    let plays: Int
    let index: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let songs = plays.enumerated().map { Song(plays: $0.element, index: $0.offset) }
    var dic: [String:Genre] = [:]
    var answer: [Int] = []

    for (i, genre) in genres.enumerated() {
        var item = dic[genre] ?? Genre()
        item.count += songs[i].plays
        item.songList.append(songs[i])
        dic[genre] = item
    }

    for(_, value) in dic.sorted(by: { $0.1.count > $1.1.count }) {
        for (i, song) in value.songList.sorted().enumerated() {
            if i > 1 { break }
            answer.append(song.index)
        }
    }

    return answer
}

let genres = ["classic", "pop", "classic", "classic", "pop"]
let plays = [500, 600, 150, 800, 2500]
// [4, 1, 3, 0]

print(solution(genres, plays))
