as yet unclassified
startMessageTally
	self isTallyRunning 
		ifTrue: [
			self isTallyRunning: false.
			self stspbutton label: PrettyProfiler startText.
			self resultarea on: [self tallyResult] list: #value selected: nil changeSelected: nil menu: nil keystroke: nil]
		ifFalse:[
			self isTallyRunning: true.
			self stspbutton label: PrettyProfiler stopText.
			(self confirm: 'MessageTally will start now, and stop when the cursor goes to the top of the screen')
				ifTrue: [
					BetterMessageTally spyOn: PrettyProfiler testBlock.
					self tallyResult: (BetterMessageTally makeTallyCollection)]
				ifFalse: [self isTallyRunning: false]].
	