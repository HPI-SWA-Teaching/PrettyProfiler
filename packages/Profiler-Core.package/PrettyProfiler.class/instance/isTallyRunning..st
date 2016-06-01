accessing
isTallyRunning: newValue

	isTallyRunning := newValue.
	isTallyRunning
		ifTrue: [
			runButton label: PrettyProfiler stopText.
			BetterMessageTally spyOn: PrettyProfiler testBlock.
			tallyResult := (BetterMessageTally makeTallyCollection: self)]
		ifFalse: [
			runButton label: PrettyProfiler startText.
			resultList on: tallyResult list: #value selected: nil changeSelected: #showDetails: menu: nil keystroke: nil]