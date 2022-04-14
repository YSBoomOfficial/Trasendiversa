//
//  Extensions.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

infix operator *

func *(lhs: String, rhs: Int) -> String {
	var result = ""
	for _ in 0...rhs {
		result += lhs
	}

	return result
}
