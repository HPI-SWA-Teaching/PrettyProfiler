as yet unclassified
runWithTimeout: timeInSeconds
	
	| delay timeout |
	
	delay := Delay forSeconds: timeInSeconds.
	timeout := [
		delay wait.
		self isTallyRunning: false] newProcess.
	timeout priority: Processor timingPriority-1.

	timeout resume.
	BetterMessageTally spyOn: [
		Transcript show: '<runWithTimeout>'.
		self block value.
		delay delaySemaphore signal]