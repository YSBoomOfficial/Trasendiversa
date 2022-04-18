//
//  TextMethods.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - Text Methods
// convert character to writing system
func charToWritingSystem(char: Character) -> Character {
	switch char {
		case "i": return "I"
		case "e": return "E"
		case "a": return "A"
		case "ə": return "Ê"
		case "u": return "U"
		case "o": return "O"
		case "ɑ": return "À"
		case "p": return "P"
		case "b": return "B"
		case "t": return "T"
		case "d": return "D"
		case "k": return "K"
		case "g": return "G"
		case "m": return "M"
		case "n": return "N"
		case "f": return "F"
		case "v": return "V"
		case "θ": return "C"
		case "s": return "S"
		case "z": return "Z"
		case "ʃ": return "Š"
		case "ʒ": return "Ž"
		case "h": return "H"
		case "ɹ": return "R"
		case "j": return "J"
		case "l": return "L"
		case "w": return "W"
		case "t͡": return "T"
		case "d͡": return "D"
		default: return char
	}
}

// convert word to writing system
func wordToWritingSystem(word: String) -> String {
	var result = ""
	for letter in word {
		result += String(charToWritingSystem(char: letter))
	}
	return result
}

// convert word to writing system
func wordToWritingSystem(word: Word) -> String {
	var result = ""
	for letter in word.tl {
		result += String(charToWritingSystem(char: letter))
	}
	return result
}

// convert text to writing system
func textToWritingSystem(text: String) -> (String, [String]) {
	let sentences = text.split(separator: "\n")
	var tlResult = ""
	var wordsMissingFromLex = [String]()

	for sentence in sentences {
		var tlSentence = ""
		let splitWords = sentence.split(separator: " ")

		for word in splitWords {
			let word = String(word)
			let tlWord = wordDict[word] == nil ? word : wordToWritingSystem(word: wordDict[word]!)
			tlSentence += tlWord + " "

			if tlWord == word && word != "PST", word != "-PL", word != "FUT", !wordsMissingFromLex.contains(word) {
				wordsMissingFromLex.append(word)
			}
		}

		tlSentence = tlSentence.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " -", with: "-")
		tlSentence += ".\n"
		if tlSentence != "" && tlSentence != ".\n" {
			tlResult += tlSentence
		}
	}

	return (tlResult, wordsMissingFromLex)
}

// convert text to phonetic transcription
func textToPhon(text: String) -> String {
	let sentences = text.split(separator: "\n")
	var tlResult = ""

	for sentence in sentences {
		var tlSentence = ""
		let splitWords = sentence.split(separator: " ")

		for word in splitWords {
			let foundWord = allWords.first { $0.en == String(word) }

			let tlWord = foundWord == nil ? "_"*word.count : foundWord!.tl
			tlSentence += tlWord + " "
		}

		tlSentence = tlSentence.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " -", with: "-")
		if tlSentence != "" { tlResult += tlSentence+"\n" }
	}

	return tlResult

}

// convert text to romanization transcription
func textToRomanization(text: String) -> String {
	let sentences = text.split(separator: "\n")
	var tlResult = ""

	for sentence in sentences {
		var tlSentence = ""
		let splitWords = sentence.split(separator: " ")

		for word in splitWords {
			let foundWord = allWords.first { $0.en == String(word) }

			let tlWord = foundWord == nil ? "_"*word.count : foundWord!.transcription
			tlSentence += tlWord + " "
		}

		tlSentence = tlSentence.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " -", with: "-")
		if tlSentence != "" { tlResult += tlSentence+"\n" }
	}

	return tlResult

}

// convert text to cv syllables
func textToCvSyl(text: String) -> String {
	let sentences = text.split(separator: "\n")
	var tlResult = ""

	for sentence in sentences {
		var tlSentence = ""
		let splitWords = sentence.split(separator: " ")

		for word in splitWords {
			let foundWord = allWords.first { $0.en == String(word) }

			let tlWord = foundWord == nil ? "_"*word.count : foundWord!.cvSylStr
			tlSentence += tlWord + " "
		}

		tlSentence = tlSentence.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " -", with: "-")
		if tlSentence != "" { tlResult += tlSentence+"\n" }
	}

	return tlResult

}

// convert text to all syllables
func textToAllSyl(text: String) -> String {
	let sentences = text.split(separator: "\n")
	var tlResult = ""

	for sentence in sentences {
		var tlSentence = ""
		let splitWords = sentence.split(separator: " ")

		for word in splitWords {
			let foundWord = allWords.first { $0.en == String(word) }

			let tlWord = foundWord == nil ? "_"*word.count : foundWord!.allSyls
			tlSentence += tlWord + " "
		}

		tlSentence = tlSentence.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: " -", with: "-")
		if tlSentence != "" { tlResult += tlSentence+"\n" }
	}

	return tlResult

}

// print En and Tl text in a gloss like way
func printGloss(tl: String, morph: String, showRomanization: Bool = true, showIPA: Bool = false, translation: String, showSyls: Bool = false) {
	let splitTL = tl.replacingOccurrences(of: "-", with: "").split(separator: "\n")
	let splitPhono = textToPhon(text: morph).replacingOccurrences(of: " -", with: "-").split(separator: "\n")
	let splitTranscription = textToRomanization(text: morph).replacingOccurrences(of: " -", with: "-").split(separator: "\n")
	let splitEN = morph.replacingOccurrences(of: " -", with: "-").split(separator: "\n")
	let translation = translation.split(separator: "\n")

	let cvSyls = textToCvSyl(text: morph).replacingOccurrences(of: " -", with: "-").split(separator: "\n")
	let allSyls = textToAllSyl(text: morph).replacingOccurrences(of: " -", with: "-").split(separator: "\n")

	for i in 0..<translation.count {
		print(splitTL[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in Writing System

		if showRomanization {
			print(splitTranscription[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in IPA
		}

		if showIPA {
			print(splitPhono[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in IPA
		}

		print(splitEN[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text with morphemes (partially)
		print(translation[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Translation of text in english

		if showSyls {
			print(cvSyls[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text as C and V syllables
			print(allSyls[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text as all syllable types
		}

		print()
	}
}

