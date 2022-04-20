//
//  Word.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

struct Word: CustomStringConvertible, Equatable {
	enum SyllableStructure: String, CaseIterable, CustomStringConvertible {
		case V, CV, VC, CVC, CCV, CCVC

		var description: String { self.rawValue }
	}

	let en: String // English
	let tl: String // Phonemic Language
	let phon: String // Phonetic Language
	let cvSyls: [SyllableStructure] // C and V Syllable Structure
	let allSyls: String // All Syllable Structure

	var transcription: String {
		let wordArray = Array(phon).map { String($0) }
		var result = ""

		for index in 0..<wordArray.count {
			switch wordArray[index] {
				case "ə": result += "ê"
				case "ɑ": result += "à"
				case "θ": result += "th"
				case "ɹ": result += "r"
				case "j": result += "y"
				case "ʃ":
					if index-1 >= 0 && wordArray[index-1] == "t͡" {
						result += "h"
					} else {
						result += "sh"
					}
				case "ʒ":
					if index-1 >= 0 && wordArray[index-1] == "d͡" {
						result += "j"
					} else {
						result += "zh"
					}
				case "t͡":
					if index+1 < wordArray.count && wordArray[index+1] == "s" {
						result += "t"
					} else if index+1 < wordArray.count && wordArray[index+1] == "ʃ" {
						result += "c"
					} else {
						result += "#"
					}
				case "d͡": result += "d"
				default: result += wordArray[index]
			}
		}
		return result
	}

	var cvSylStr: String {
		var str = cvSyls.reduce("") { partialResult, curr in
			partialResult + "." + curr.rawValue
		}
		str.removeFirst()
		return str
	}

	var count: Int { tl.count }

	init(en: String, tl: String, phon: String = "", cvSyls: [SyllableStructure] = [], allSyls: String = "") {
		self.en = en
		self.tl = tl
		self.cvSyls = cvSyls
		self.allSyls = allSyls
		self.phon = phon == "" ? tl : phon
	}

	var description: String {
		let text: String
		if tl == phon {
			text = "'\(en)' : /\(tl)/ | \(cvSylStr) | \(transcription) | <-> \(allSyls)"
		} else {
			text = "'\(en)' : /\(tl)/ -> [\(phon)] | \(transcription) | \(cvSylStr) <-> \(allSyls)"
		}
		return text
	}
}
