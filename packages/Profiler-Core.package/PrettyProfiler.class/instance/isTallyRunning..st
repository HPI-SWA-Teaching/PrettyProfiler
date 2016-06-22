accessing
isTallyRunning: newValue
	
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
			"(tallyResult isNil) ifFalse: [
			Transcript show: tallyResult size]."
			runButton label: PrettyProfiler startText.
			self updateResults: tallyResult. 
			tallyResult := nil.
			BetterMessageTally terminateTimerProcess]