#!/usr/bin/env ruby

require_relative 'data_retrieval.rb'

def search_accepts_arbitrary_terms()
	term1, term2 = "minecraft.net", "nintendo.com"

	puts search(term1) != search(term2)
end

search_accepts_arbitrary_terms()