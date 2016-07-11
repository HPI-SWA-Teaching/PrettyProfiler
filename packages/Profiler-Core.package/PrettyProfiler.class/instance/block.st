as yet unclassified
block

	| string |
	string := blockInput text.
	Transcript show: string;cr.
	
	((string notEmpty) and: [string beginsWith: '['])
		ifTrue: [^ Compiler evaluate: string]
		ifFalse: [^ PrettyProfiler defaultBlock]