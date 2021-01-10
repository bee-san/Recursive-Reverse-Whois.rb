#!/usr/bin/env ruby

require 'rubygems'
require 'excon'

def search(searchTerm)
	dataSource = "https://www.reversewhois.io/?searchterm=" + searchTerm

	response = Excon.get(dataSource)
	
	puts response.body	
end