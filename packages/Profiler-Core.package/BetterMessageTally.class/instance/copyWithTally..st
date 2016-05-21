private
copyWithTally: hitCount
	^ (BetterMessageTally new class: class method: method nesting: blockNesting)
		reportOtherProcesses: reportOtherProcesses;
		process: process;
		bump: hitCount