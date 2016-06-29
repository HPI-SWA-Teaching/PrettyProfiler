as yet unclassified
block

	| string |
	string := blockInput contents string.
	
	(string notEmpty)
		ifTrue: [
			((string beginsWith: '['))
				ifTrue:  [^ Compiler evaluate: string]
				ifFalse: [^ Compiler evaluate: ('[' , string , ']')]]
		ifFalse: [^ PrettyProfiler defaultBlock]