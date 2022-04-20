//
//  SoundInventory.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

// MARK: - Vowels
let front = ["i", "e", "a"]
let cent = ["ə"]
let back = ["u", "o", "ɑ"]

// MARK: - Consonants
let stops = ["p", "b", "t", "d", "k", "g"]
let nasals = ["m", "n"]
let fricatives = ["f", "v", "θ", "s", "z", "ʃ", "ʒ"]
let approximants = ["ɹ", "j", "l", "w"] // A
let affricates = ["t͡s", "t͡ʃ", "d͡z", "d͡ʒ"] // a

// MARK: - Inventory
let vowels = front + cent + back
let cons = stops + nasals + fricatives + approximants + affricates
let inventory = vowels + cons

let obstruents = fricatives + affricates + stops
let sonorants = vowels + approximants + nasals

func getInvCount() {
	print("""
  --INVENTORY--
  Consonants: \(cons.count)
  stops - \(stops)
  nasals - \(nasals)
  fricatives - \(fricatives)
  approximants - \(approximants)
  affricates - \(affricates)

  Vowels: \(vowels.count)
  Front Vowels - \(front)
  Cent Vowels - \(cent)
  Back Vowels - \(back)

  TOTAL: \(inventory.count)
  """)
}

/* Romanization
 Vowels
[i] = i
[e] = e
[a] = a
[ə] = ê
[u] = u
[o] = o
[ɑ] = à

 Consonants
 [p] = p
 [b] = b
 [t] = t
 [d] = d
 [k] = k
 [g] = g
 [m] = m
 [n] = n
 [f] = f
 [v] = v
 [θ] = th
 [s] = s
 [z] = z
 [ʃ] = sh
 [ʒ] = zh
 [ɹ] = r
 [l] = l
 [j] = y
 [w] = w
 [t͡s] = ts
 [t͡ʃ] = ch
 [d͡z] = dz
 [d͡ʒ] = dj
 */
