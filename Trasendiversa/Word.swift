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
			text = "\(en) : /\(tl)/ | \(cvSylStr) <-> \(allSyls)"
		} else {
			text = "\(en) : /\(tl)/ -> [\(phon)] | \(cvSylStr) <-> \(allSyls)"
		}
		return text
	}
}

