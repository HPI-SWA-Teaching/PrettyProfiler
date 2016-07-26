as yet unclassified
startProfiling

	| timeOutInSeconds |
	runButton label: self class stopText.
	tallyResult := nil.
	resultList on: nil list: nil selected: nil changeSelected: #showDetails: menu: nil keystroke: nil.

	timeOutInSeconds := Number readFrom: (timeoutInput contents string) ifFail: [timeOutInSeconds := 0].
	(timeOutInSeconds = 0)
		ifTrue: [self runWithoutTimeout]
		ifFalse: [self runWithTimeout: timeOutInSeconds]