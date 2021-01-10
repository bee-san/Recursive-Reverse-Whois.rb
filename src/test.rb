#!/usr/bin/env ruby

require_relative 'data_retrieval.rb'

def search_accepts_arbitrary_terms()
	term1, term2 = "minecraft.net", "nintendo.com"

	puts (search(term1) != search(term2)).to_s + ": " + __method__.to_s
end

def expectType_correctly_accepts()
	aString = "Henlo"

	puts (expectType([String], aString) == String).to_s + ": " + __method__.to_s
end

def expectType_correctly_declines()
	aString = "Henlo"

	puts (expectType([Array], aString) == false).to_s + ": " + __method__.to_s
end

def expectType_accepts_multiple_types()
	aArray = ["hi", 2]

	puts (expectType([String, Array], aArray) == Array).to_s + ": " + __method__.to_s
end

def expectType_declines_multiple_types()
	aArray = ["hi", 2]

	puts (expectType([String, Integer], aArray) == false).to_s + ": " + __method__.to_s
end

# def search_accepts_multiple_searchTerms()
# 	term1, term2 = "minecraft.net", "nintendo.com"

# 	puts (search([term1, term2])).to_s + ": " + __method__.to_s
# end

search_accepts_arbitrary_terms()
expectType_correctly_accepts()
expectType_correctly_declines()
expectType_accepts_multiple_types()
expectType_declines_multiple_types()