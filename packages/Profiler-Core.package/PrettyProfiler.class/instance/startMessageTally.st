as yet unclassified
startMessageTally

	self isTallyRunning 
		ifTrue: [
			self isTallyRunning: false.
			self stspbutton label: PrettyProfiler startText.
			self resultArea on: (self tallyResult) list: #value selected: nil changeSelected: #showDetails: menu: nil keystroke: nil]
		ifFalse:[
			self isTallyRunning: true.
			self stspbutton label: PrettyProfiler stopText.
			BetterMessageTally spyOn: PrettyProfiler testBlock.
			self tallyResult: (BetterMessageTally makeTallyCollection: self)]