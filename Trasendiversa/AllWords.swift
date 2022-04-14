//
//  AllWords.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - All Words

let pronouns = [
	// 1st SG
	Word(en: "i", tl: "i", cvSyls: [.V], allSyls: "V"),
	Word(en: "me", tl: "i", cvSyls: [.V], allSyls: "V"),
	// 1st PL
	Word(en: "we", tl: "wi", cvSyls: [.CV], allSyls: "AV"),
	Word(en: "us", tl: "wi", cvSyls: [.CV], allSyls: "AV"),

	// 2nd SG
	Word(en: "you", tl: "to", cvSyls: [.CV], allSyls: "SV"),
	Word(en: "you.SG", tl: "to", cvSyls: [.CV], allSyls: "SV"),
	// 2nd PL
	Word(en: "you.PL", tl: "toʃə", cvSyls: [.CV, .CV], allSyls: "NV.FV"),

	// 3rd SG
	Word(en: "he", tl: "sa", cvSyls: [.CV], allSyls: "FV"),
	Word(en: "him", tl: "sa", cvSyls: [.CV], allSyls: "FV"),
	Word(en: "she", tl: "sa", cvSyls: [.CV], allSyls: "FV"),
	Word(en: "her", tl: "sa", cvSyls: [.CV], allSyls: "FV"),
	Word(en: "it", tl: "sa", cvSyls: [.CV], allSyls: "FV"),
	// 3rd PL
	Word(en: "they", tl: "la", cvSyls: [.CV], allSyls: "AV"),
	Word(en: "them", tl: "la", cvSyls: [.CV], allSyls: "AV"),
]

let nouns = [
	Word(en: "universe", tl: "veɹsa", cvSyls:[.CVC, .CV], allSyls: "FVA.FV"),
	Word(en: "creation", tl: "veɹ", cvSyls:[.CVC], allSyls: "FVA"),
	Word(en: "water", tl: "wola", cvSyls: [.CV, .CV], allSyls: "AV.AV"),
	Word(en: "fire", tl: "flam", cvSyls: [.CCVC], allSyls: "FAVN"),
	Word(en: "blood", tl: "flo", cvSyls: [.CCV], allSyls: "FAV"),
	Word(en: "bone", tl: "səkel", phon: "zəkel", cvSyls: [.CV, .CVC], allSyls: "FV.SVA"),
	Word(en: "nose", tl: "neso", cvSyls: [.CV, .CV], allSyls: "NV.FV"),
	Word(en: "mouth", tl: "ma", cvSyls: [.CV], allSyls: "NV"),
	Word(en: "tongue", tl: "ela", cvSyls: [.V, .CV], allSyls: "V.AV"),
	Word(en: "name", tl: "min", cvSyls: [.CVC], allSyls: "NVN"),
	Word(en: "ground", tl: "gɹəvə", phon: "gɹovə", cvSyls: [.CCV, .CV], allSyls: "SAV.FV"),
	Word(en: "foundation", tl: "gɹəvə", phon: "gɹovə", cvSyls: [.CCV, .CV], allSyls: "SAV.FV"),
	Word(en: "root", tl: "latu", cvSyls: [.CV, .CV], allSyls: "AV.SV"),
	Word(en: "path", tl: "latu", cvSyls: [.CV, .CV], allSyls: "AV.SV"),
	Word(en: "rain", tl: "ʃawa", cvSyls: [.CV, .CV], allSyls: "FV.AV"),
	Word(en: "breast", tl: "paɹʃal", phon: "baɹʃal", cvSyls: [.CVC, .CVC], allSyls: "SVA.FVA"),
	Word(en: "louse", tl: "sləv", phon: "slov", cvSyls: [.CCVC], allSyls: "FAVF"),
	Word(en: "wing", tl: "fləjov", cvSyls: [.CCV, .CVC], allSyls: "FAV.AVF"),
	Word(en: "flesh", tl: "mɑɹtaɹ", cvSyls: [.CVC, .CVC], allSyls: "NVA.SVA"),
	Word(en: "meat", tl: "mɑɹtaɹ", cvSyls: [.CVC, .CVC], allSyls: "NVA.SVA"),
	Word(en: "arm", tl: "ɹusav", cvSyls: [.CV, .CVC], allSyls: "AV.FVF"),
	Word(en: "hand", tl: "ɹusav", cvSyls: [.CV, .CVC], allSyls: "AV.FVF"),
	Word(en: "night", tl: "nait͡s", cvSyls: [.CV, .VC], allSyls: "NV.Va"),
	Word(en: "void", tl: "nait͡s", cvSyls: [.CV, .VC], allSyls: "NV.Va"),
	Word(en: "nothing", tl: "nait͡s", cvSyls: [.CV, .VC], allSyls: "NV.Va"),
	Word(en: "morning", tl: "moid͡z", cvSyls: [.CV, .VC], allSyls: "NV.Va"),
	Word(en: "day", tl: "moid͡z", cvSyls: [.CV, .VC], allSyls: "NV.Va"),
	Word(en: "ear", tl: "feɹa", cvSyls: [.CV, .CV], allSyls: "FV.AV"),
	Word(en: "bird", tl: "əka", cvSyls: [.V, .CV], allSyls: "V.SV"),
	Word(en: "space", tl: "zot͡ʃɑ", cvSyls: [.CV, .CV], allSyls: "FV.aV"),
	Word(en: "time", tl: "tazɑ", cvSyls: [.CV, .CV], allSyls: "SV.FV"),
	Word(en: "lord", tl: "t͡ʃebjə", cvSyls: [.CVC, .CV], allSyls: "aVS.AV"),
	Word(en: "person", tl: "jaswe", cvSyls: [.CV, .CCV], allSyls: "AV.FAV"),
	Word(en: "thing", tl: "θe", cvSyls: [.CV], allSyls: "FV"),
	Word(en: "god", tl: "motev", cvSyls: [.CV, .CVC], allSyls: "NV.SVF"),
	Word(en: "law", tl: "d͡ʒim", cvSyls: [.CVC], allSyls: "aVN"),
	Word(en: "fun", tl: "fit", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "amusement", tl: "fit", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "father", tl: "dada", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "dad", tl: "dada", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "mother", tl: "mama", cvSyls: [.CV, .CV], allSyls: "NV.NV"),
	Word(en: "mum", tl: "mama", cvSyls: [.CV, .CV], allSyls: "NV.NV"),
	Word(en: "mom", tl: "mama", cvSyls: [.CV, .CV], allSyls: "NV.NV"),
	Word(en: "hole", tl: "t͡ʃaθ", cvSyls: [.CVC], allSyls: "aVF"),
	Word(en: "vault", tl: "t͡ʃav", cvSyls: [.CVC], allSyls: "aVF"),
	Word(en: "data", tl: "tada", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "information", tl: "tada", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "knowledge", tl: "tada", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "secret", tl: "tavə", cvSyls: [.CV, .CV], allSyls: "SV.FV"),
	Word(en: "technology", tl: "t͡ʃjagɹe", cvSyls: [.CCV, .CCV], allSyls: "aAV.SAV"),
	Word(en: "star", tl: "rat͡s", cvSyls: [.CVC], allSyls: "AVa"),
	Word(en: "neutron", tl: "nulton", cvSyls: [.CVC, .CVC], allSyls: "NVA.SVN"),
	Word(en: "proton", tl: "pulton", cvSyls: [.CVC, .CVC], allSyls: "SVA.SVN"),
	Word(en: "electron", tl: "ton", cvSyls: [.CVC], allSyls: "SVN"),
	Word(en: "quantum", tl: "kalton", cvSyls: [.CVC, .CVC], allSyls: "SVA.SVN"),
]

// Adjectives and Adverbs
let adjuncts = [
	Word(en: "quick", tl: "t͡ʃaiv", cvSyls: [.CV, .VC], allSyls: "aV.VF"),
	Word(en: "quickly", tl: "t͡ʃaiv", cvSyls: [.CV, .VC], allSyls: "aV.VF"),
	Word(en: "right", tl: "ɹit", cvSyls: [.CVC], allSyls: "AVS"),
	Word(en: "correct", tl: "ɹit", cvSyls: [.CVC], allSyls: "AVS"),
	Word(en: "correctly", tl: "ɹit", cvSyls: [.CVC], allSyls: "AVS"),
	Word(en: "black", tl: "t͡ʃɑɹu", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "dark", tl: "t͡ʃɑɹu", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "white", tl: "ɹut͡ʃɑ", cvSyls: [.CV, .CV], allSyls: "AV.aV"),
	Word(en: "light", tl: "ɹut͡ʃɑ", cvSyls: [.CV, .CV], allSyls: "AV.aV"),
	Word(en: "other", tl: "met", cvSyls: [.CVC], allSyls: "NVS"),
	Word(en: "young", tl: "som", cvSyls: [.CVC], allSyls: "FVN"),
]

let verbs = [
	Word(en: "transcend", tl: "tɹɑsen", cvSyls: [.CCV, .CVC], allSyls: "SAV.FVN"),
	Word(en: "go", tl: "d͡ʒa", cvSyls: [.CV], allSyls: "aV"),
	Word(en: "come", tl: "awa", cvSyls: [.V,.CV], allSyls: "V.AV"),
	Word(en: "be", tl: "soa", cvSyls: [.CV, .V], allSyls: "FV.V"),
	Word(en: "fly", tl: "fləj", cvSyls: [.CCVC], allSyls: "FAVA"),
	Word(en: "say", tl: "ʃat", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "ask", tl: "ʃat", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "tell", tl: "mid͡ʒ", cvSyls: [.CVC], allSyls: "NVa"),
	Word(en: "explain", tl: "mid͡ʒ", cvSyls: [.CVC], allSyls: "NVa"),
	Word(en: "speak", tl: "ʃat", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "stay", tl: "t͡siɹi", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "remain", tl: "t͡siɹi", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "leave", tl: "ɹit͡si", cvSyls: [.CV, .CV], allSyls: "AV.aV"),
	Word(en: "escape", tl: "ɹit͡si", cvSyls: [.CV, .CV], allSyls: "AV.aV"),
	Word(en: "evolve", tl: "pojab", cvSyls: [.CV, .CVC], allSyls: "SV.AVS"),
	Word(en: "pass", tl: "pojab", cvSyls: [.CV, .CVC], allSyls: "SV.AVS"),
	Word(en: "reduce", tl: "tivoz", cvSyls: [.CV, .CVC], allSyls: "SV.FVF"),
	Word(en: "destroy", tl: "tivoz", cvSyls: [.CV, .CVC], allSyls: "SV.FVF"),
	Word(en: "crack", tl: "tivoz", cvSyls: [.CV, .CVC], allSyls: "SV.FVF"),
	Word(en: "make", tl: "vosti", cvSyls: [.CVC, .CV], allSyls: "FVF.SV"),
	Word(en: "extract", tl: "vosti", cvSyls: [.CVC, .CV], allSyls: "FVF.SV"),
	Word(en: "create", tl: "vosti", cvSyls: [.CVC, .CV], allSyls: "FVF.SV"),
	Word(en: "forge", tl: "vosti", cvSyls: [.CVC, .CV], allSyls: "FVF.SV"),
	Word(en: "guide", tl: "foɹni", cvSyls: [.CVC, .CV], allSyls: "FVA.NV"),
	Word(en: "lead", tl: "foɹni", cvSyls: [.CVC, .CV], allSyls: "FVA.NV"),
	Word(en: "save", tl: "vosat", cvSyls: [.CV, .CVC], allSyls: "FV.FVS"),
	Word(en: "protect", tl: "vosat", cvSyls: [.CV, .CVC], allSyls: "FV.FVS"),

]

let prepositions = [
	Word(en: "to", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	Word(en: "from", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	Word(en: "of", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	Word(en: "at", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	Word(en: "in", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	Word(en: "before", tl: "ʃwos", cvSyls: [.CCVC], allSyls: "FAVF"),
	Word(en: "after", tl: "ʒwoz", cvSyls: [.CCVC], allSyls: "FAVF"),
]

let whWords = [
	Word(en: "who", tl: "zla", cvSyls: [.CCV], allSyls: "FAV"),
	Word(en: "what", tl: "fla", cvSyls: [.CCV], allSyls: "FAV"),
	Word(en: "when", tl: "t͡ʃəwi", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "where", tl: "t͡ʃəje", cvSyls: [.CV, .CV], allSyls: "aV.AV"),
	Word(en: "why", tl: "bɹo", cvSyls: [.CCV], allSyls: "SAV"),
	Word(en: "how", tl: "d͡zwa", cvSyls: [.CCV], allSyls: "aAV"),
]

let misc = [
	Word(en: "trasendiversa", tl: "tɹɑsenveɹsa", cvSyls: [.CCV, .CVC, .CVC, .CV], allSyls: "SAV.FVN.FVA.FV"),
	// Tense
	Word(en: "PST", tl: "ta", cvSyls: [.CV], allSyls: "SV"),
	Word(en: "FUT", tl: "vɑ", cvSyls: [.CV], allSyls: "FV"),
	// Number
	Word(en: "-PL", tl: "-ʃə", cvSyls: [.CV], allSyls: "FV"),
	// Conj
	Word(en: "and", tl: "ʒad", cvSyls: [.CVC], allSyls: "FVS"),
	Word(en: "as", tl: "peɹe", cvSyls: [.CV, .CV], allSyls: "SV.AV"),
	Word(en: "because", tl: "t͡ʃu", cvSyls: [.CV], allSyls: "aV"),
	Word(en: "that", tl: "t͡ʃlaj", cvSyls: [.CCVC], allSyls: "aAVA"),
	// Infinitive
	Word(en: "INF-", tl: "ɑ", cvSyls: [.V], allSyls: "V"),
	// Question particle (yes-no questions)
	Word(en: "Q", tl: "fo", cvSyls: [.VC], allSyls: "FV"),
	// Quantifiers
	Word(en: "every", tl: "tuto", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
	Word(en: "all", tl: "tuto", cvSyls: [.CV, .CV], allSyls: "SV.SV"),
]

// MARK: - Array of all words
let allWords = pronouns + nouns + adjuncts + verbs + prepositions + misc + whWords
