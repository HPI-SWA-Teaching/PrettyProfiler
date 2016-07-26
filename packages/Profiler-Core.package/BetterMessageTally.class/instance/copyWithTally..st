private
copyWithTally: hitCount
	^ (self class new class: class method: method nesting: blockNesting)
		reportOtherProcesses: reportOtherProcesses;
		process: process;
		bump: hitCount