//
//  Extensions.swift
//  Trasendiversa
//
//  Created by Yash Shah on 03/04/2022.
//

import Foundation

func *(lhs: String, rhs: Int) -> String {
	var result = ""
	for _ in 1...rhs {
		result += lhs
	}

	return result
}

func *(lhs: Int, rhs: String) -> String {
	var result = ""
	for _ in 1...lhs {
		result += rhs
	}
	return result
}
