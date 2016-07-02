as yet unclassified
block

	| string |
	string := blockInput contents string.
	
	((string notEmpty) and: [string beginsWith: '['])
		ifTrue: [^ Compiler evaluate: string]
		ifFalse: [^ PrettyProfiler defaultBlock]