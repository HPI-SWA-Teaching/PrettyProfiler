run
runWithTimeout: timeInSeconds

	| delay |

	delay := Delay forSeconds: timeInSeconds.
	timeout := [
		delay wait.
		self stopProfiling.
		timeout terminate] newProcess.
	timeout priority: Processor timingPriority-1.

	timeout resume.
	BetterMessageTally spyOn: self block.
	delay delaySemaphore signal