streaming
nextUpToAll: delimitingString 
	| string |
	self unpeek.
	string := stream upToAll: delimitingString.
	 stream skip: delimitingString size negated.
	( stream next: delimitingString size) = delimitingString 
		ifFalse: 
			[XPPStructureException signal: 'XML no delimiting ' , delimitingString printString , ' found'].
	^ string