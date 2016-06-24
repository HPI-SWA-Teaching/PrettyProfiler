as yet unclassified
profileThis: aString
	| profilerInstance |
	
	profilerInstance := self new.
	profilerInstance setBlockInputContentTo: aString.
	profilerInstance openInWorld.
	profilerInstance toggleMessageTally