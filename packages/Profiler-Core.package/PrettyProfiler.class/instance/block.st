as yet unclassified
block

	| string |
	string := blockInput contents string.

	(string notEmpty)
		ifTrue: [^ Compiler evaluate: string]
		ifFalse: [^ PrettyProfiler defaultBlock]