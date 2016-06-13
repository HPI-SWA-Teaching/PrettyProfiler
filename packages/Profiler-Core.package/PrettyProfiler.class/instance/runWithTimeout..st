as yet unclassified
runWithTimeout: timeInSeconds

	| delay |

	delay := Delay forSeconds: timeInSeconds.
	timeout := [
		delay wait.
		self isTallyRunning: false.
		timeout terminate] newProcess.
	timeout priority: Processor timingPriority-1.

	timeout resume.
	BetterMessageTally spyOn: self block.
	delay delaySemaphore signal