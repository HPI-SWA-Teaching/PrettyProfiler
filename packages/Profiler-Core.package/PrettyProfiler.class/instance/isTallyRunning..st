accessing
isTallyRunning: newValue
	
	(isTallyRunning = newValue)
		ifTrue: [^ self].
	isTallyRunning := newValue.

	newValue
		ifTrue: [
			| timeInSeconds |

			runButton label: PrettyProfiler stopText.
			resultList on: nil list: nil selected: nil changeSelected: #showDetails: menu: nil keystroke: nil.
			tallyResult := (BetterMessageTally makeTallyCollection: self).

			timeInSeconds := Number readFrom: (timeoutInput contents string) ifFail: [timeInSeconds := 0].
			(timeInSeconds = 0)
				ifTrue: [self runWithoutTimeout]
				ifFalse: [self runWithTimeout: timeInSeconds]]
		ifFalse: [
			runButton label: PrettyProfiler startText.
			resultList on: tallyResult list: #value selected: nil changeSelected: #showDetails: menu: nil keystroke: nil]