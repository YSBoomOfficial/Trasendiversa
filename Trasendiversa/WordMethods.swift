//
//  WordMethods.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - Words Methods

// Get all words
func getAllWords() {
	for word in words.sorted(by: { $1.count > $0.count }) {
		print(word)
	}
}

func getAllWordsAsDict() -> [String: String] {
	var result = [String: String]()

	for word in words {
		result[word.en] = word.tl
	}

	return result
}

// Get all words by Syllables it contains
func getAllWordsBySyl() {
	for syl in Word.SyllableStructure.allCases {
		print(syl.rawValue)
		getWords(with: syl)
		print()
	}
}

// Get words a specific syllable type
func getWords(with syl: Word.SyllableStructure) {
	for word in words {
		if word.cvSyls.contains(syl) {
			print(word)
		}
	}
}

// Get words that contain a substring
func getWords(with substring: String) {
	for word in words {
		if word.tl.contains(substring) {
			print(word)
		}
	}
}

// Character frequency in all words
func charFrequency() {
	var dict = [String: Int]()
	for word in words {
		for char in word.tl {
			dict[String(char), default: 0] += 1
		}

		for a in affricates {
			if word.tl.contains(a) {
				dict[a, default: 0] += 1
				dict[String(a.last!), default: 0] -= 1
			}
		}
	}

	for l in inventory {
		if dict[l] == nil {
			dict[l] = 0
		}
	}

	dict["t͡"] = nil
	dict["d͡"] = nil

	for elem in dict.sorted(by: { $1.value > $0.value }) {
		print("\(elem.key) : \(elem.value)")
	}
}

// words containing every 2char pairs
func charPairsDict() {
	var dict = [String: [Word]]()
	for v1 in inventory {
		for v2 in inventory {
			var wrds = [Word]()

			for word in words {
				if word.tl.contains(("\(v1)\(v2)")) {
					wrds.append(word)
				} else { continue }
			}

			if wrds.isEmpty { continue }

			dict["\(v1)\(v2)"] = wrds
		}
	}

	for elem in dict.sorted(by: { $1.value.count > $0.value.count }) {
		print("|\(elem.key)|")
		for word in elem.value.sorted(by: { $1.count > $0.count}) {
			print(word)
		}
		print()
	}
}
