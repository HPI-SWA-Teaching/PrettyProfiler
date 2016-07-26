as yet unclassified
block

	| string |
	string := blockInput text.
	
	((string notEmpty) and: [string beginsWith: '['])
		ifTrue: [^ Compiler evaluate: string]
		ifFalse: [^ self class defaultBlock]