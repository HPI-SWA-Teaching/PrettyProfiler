accessing
isTallyRunning: newValue
	
	(isTallyRunning = newValue)
		ifTrue: [^ self].
	isTallyRunning := newValue.

	newValue
		ifTrue: [
			runButton label: PrettyProfiler stopText.
			tallyResult := (BetterMessageTally makeTallyCollection: self).
			resultList on: nil list: nil selected: nil changeSelected: #showDetails: menu: nil keystroke: nil.
			BetterMessageTally spyOn: [PrettyProfiler testBlock. self isTallyRunning: false]]
		ifFalse: [
			runButton label: PrettyProfiler startText.
			resultList on: tallyResult list: #value selected: nil changeSelected: #showDetails: menu: nil keystroke: nil]