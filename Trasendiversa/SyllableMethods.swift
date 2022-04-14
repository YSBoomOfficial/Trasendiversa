//
//  Syllables.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - Syllables Methods

// Generate random syllables
func generateRandomSyl(type: Word.SyllableStructure) -> String {
	var result = ""
	switch type {
		case .V:
			result += vowels.randomElement()!
		case .CV:
			result += cons.randomElement()!
			result += vowels.randomElement()!
		case .VC:
			result += vowels.randomElement()!
			result += cons.randomElement()!
		case .CVC:
			result += cons.randomElement()!
			result += vowels.randomElement()!
			result += cons.randomElement()!
		case .CCV: // Obstruent+Approximant (Glide/Liquid)
			result += obstruents.randomElement()!
			result += approximants.randomElement()!
			result += vowels.randomElement()!
		case .CCVC:
			result += obstruents.randomElement()!
			result += approximants.randomElement()!
			result += vowels.randomElement()!
			result += cons.randomElement()!
	}

	return result
}

// Make sure both the cvSyls and allSyls are the same length
func verifySylLength() {
	var unevenCount = 0

	for word in words {
		if word.cvSylStr.count != word.allSyls.count {
			print(word)
			unevenCount += 1
		}
	}

	if unevenCount > 0 {
		print("\(unevenCount) words have uneven cvSyls and allSyls")
		return
	} else { print("Even count, All good!") }
}

// Syllable Analysis
func sylAnalysis() {
	var set = Set<String>()
	for word in words {
		for syl in word.allSyls.split(separator: "."){
			set.insert(String(syl))
		}
	}
	print(set.sorted(by: { $1.count > $0.count }))
}

// Complex Onset Analysis
func ccAnalysis() {
	for word in words {
		if word.cvSylStr.contains("CC") {
			print(word)
		}
	}
}

// Get all words with Diphthong
func getDiphthongs() {
	for word in words {
		if word.cvSylStr.contains("V.V") {
			print(word)
		}
		for v in vowels {
			if word.tl.contains("\(v)j") || word.tl.contains("\(v)w") {
				print(word)
			}
		}
	}
}
