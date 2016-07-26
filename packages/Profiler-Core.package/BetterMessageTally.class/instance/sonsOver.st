comparing
sonsOver
	| hereTally last sons |

	receivers basicSize = 0 ifTrue: [^#()].
	hereTally := tally.
	sons := receivers select:  "subtract subNode tallies for primitive hits here"
		[:son |
		hereTally := hereTally - son tally.
		son tally > 1].
	hereTally > 1 ifTrue:
		[last := self class new class: class method: method nesting: blockNesting.
		 last process: process.
		 last reportOtherProcesses: reportOtherProcesses.
		 ^sons copyWith: (last primitives: hereTally)].
	^sons