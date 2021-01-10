#!/usr/bin/env ruby

require 'rubygems'
require 'excon'

def search()
	dataSource = "https://www.reversewhois.io/?searchterm=minecraft.net"

	response = Excon.get(dataSource)
	
	puts response.body	
end