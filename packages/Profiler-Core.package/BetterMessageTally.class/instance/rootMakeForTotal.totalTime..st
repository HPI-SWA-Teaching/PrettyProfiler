printing
rootMakeForTotal: total totalTime: totalTime

	| groups sons |
	
	sons := self sonsOver.
	groups := sons groupBy: [ :aTally | aTally process ].
	groups keysAndValuesDo: [ :p :g |
		(reportOtherProcesses or: [ p notNil ]) ifTrue: [
			g sort do:[:aSon | 
				aSon 
					treeMakeForTotal: total
					totalTime: totalTime
					tallyExact: false
					parentTally: nil]].
	].
	