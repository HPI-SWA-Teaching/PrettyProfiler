spying
spyOn: aBlock reportOtherProcesses: aBoolean
	| node result |

	node := self new.
	node reportOtherProcesses: aBoolean.
	result := node spyEvery: self defaultPollPeriod on: aBlock.
	node
		rootMakeForTotal: node tally
		totalTime: node time