//
//  TextMethods.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - Text Methods

/*
 Alphabet
 /i/ = I
 /e/ = E
 /a/ = A
 /ə/ = Ê
 /u/ = U
 /o/ = O
 /ɑ/ = À
 /p/ = P
 /b/ = B
 /t/ = T
 /d/ = D
 /k/ = K
 /g/ = G
 /m/ = M
 /n/ = N
 /f/ = F
 /v/ = V
 /θ/ = C
 /s/ = S
 /z/ = Z
 /ʃ/ = Š
 /ʒ/ = Ž
 /ɹ/ = R
 /j/ = J
 /l/ = L
 /w/ = W
 /t͡s/ = TS
 /t͡ʃ/ = TŠ
 /d͡z/ = DZ
 /d͡ʒ/ = DŽ
 */

// convert character to writing system
var charToWritingSystemDict: [Character: Character] = [
	"i":"I",
	"e":"E",
	"a":"A",
	"ə":"Ê",
	"u":"U",
	"o":"O",
	"ɑ":"À",
	"p":"P",
	"b":"B",
	"t":"T",
	"d":"D",
	"k":"K",
	"g":"G",
	"m":"M",
	"n":"N",
	"f":"F",
	"v":"V",
	"θ":"C",
	"s":"S",
	"z":"Z",
	"ʃ":"Š",
	"ʒ":"Ž",
	"h":"H",
	"ɹ":"R",
	"j":"J",
	"l":"L",
	"w":"W",
	"t͡":"T",
	"d͡":"D"
]

// convert word to writing system
func wordToWritingSystem(word: String) -> String {
	var result = ""
	for letter in word {
		result += String(charToWritingSystemDict[letter] ?? letter)
	}
	return result
}

// convert word to writing system
func wordToWritingSystem(word: Word) -> String {
	var result = ""
	for letter in word.phon {
		result += String(charToWritingSystemDict[letter] ?? letter)
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

			if tlWord == word && !wordDict.keys.contains(word) && !wordsMissingFromLex.contains(word) {
				wordsMissingFromLex.append(word)
			}
		}

		tlSentence = tlSentence
			.trimmingCharacters(in: .whitespacesAndNewlines)
			.replacingOccurrences(of: " -", with: "-")
			.replacingOccurrences(of: "- ", with: "-")
		tlSentence += ".\n"

		if tlSentence != ".\n" {
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

			let tlWord = foundWord == nil ? "_"*word.count : foundWord!.phon
			tlSentence += tlWord + " "
		}

		tlSentence = tlSentence
			.trimmingCharacters(in: .whitespacesAndNewlines)
			.replacingOccurrences(of: " -", with: "-")
			.replacingOccurrences(of: "- ", with: "-")
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

		tlSentence = tlSentence
			.trimmingCharacters(in: .whitespacesAndNewlines)
			.replacingOccurrences(of: " -", with: "-")
			.replacingOccurrences(of: "- ", with: "-")
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

		tlSentence = tlSentence
			.trimmingCharacters(in: .whitespacesAndNewlines)
			.replacingOccurrences(of: " -", with: "-")
			.replacingOccurrences(of: "- ", with: "-")
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

		tlSentence = tlSentence
			.trimmingCharacters(in: .whitespacesAndNewlines)
			.replacingOccurrences(of: " -", with: "-")
			.replacingOccurrences(of: "- ", with: "-")
		if tlSentence != "" { tlResult += tlSentence+"\n" }
	}

	return tlResult

}

// print En and Tl text in a gloss like way
func printGloss(
	tl: String,
	morph: String,
	showRomanization: Bool = true,
	showIPA: Bool = false,
	translation: String,
	showSyls: Bool = false
) {
	let splitTL = tl
		.replacingOccurrences(of: "-", with: "")
		.split(separator: "\n")

	let splitPhono = textToPhon(text: morph)
		.replacingOccurrences(of: " -", with: "-")
		.replacingOccurrences(of: "- ", with: "-")
		.split(separator: "\n")

	let splitTranscription = textToRomanization(text: morph)
		.replacingOccurrences(of: " -", with: "-")
		.replacingOccurrences(of: "- ", with: "-")
		.split(separator: "\n")

	let splitEN = morph
		.replacingOccurrences(of: " -", with: "-")
		.replacingOccurrences(of: "- ", with: "-")
		.split(separator: "\n")

	let translation = translation.split(separator: "\n")

	let cvSyls = textToCvSyl(text: morph)
		.replacingOccurrences(of: " -", with: "-")
		.split(separator: "\n")

	let allSyls = textToAllSyl(text: morph)
		.replacingOccurrences(of: " -", with: "-")
		.split(separator: "\n")

	for i in translation.indices {
		print(splitTL[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in Writing System

		if showRomanization {
			print(splitTranscription[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in IPA
		}

		if showIPA {
			print(splitPhono[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text in IPA
		}

		print(splitEN[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text with morphemes (partially)
		print("'\(translation[i].trimmingCharacters(in: .whitespacesAndNewlines))'") // Translation of text in english

		if showSyls {
			print(cvSyls[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text as C and V syllables
			print(allSyls[i].trimmingCharacters(in: .whitespacesAndNewlines)) // Text as all syllable types
		}

		print()
	}
}

//let (tlText, _) = textToWritingSystem(text: morphemeText)
//printGloss(tl: tlText, morph: morphemeText, translation: translatedText)
