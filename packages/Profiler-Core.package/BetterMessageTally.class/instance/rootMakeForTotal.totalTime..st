printing
rootMakeForTotal: total totalTime: totalTime

	| groups sons |
	
	sons := self sonsOver.
	groups := sons groupBy: [ :aTally | aTally process ].
	groups keysAndValuesDo: [ :p :g |
		(reportOtherProcesses or: [ p notNil ]) ifTrue: [
			"aStream nextPutAll: '--------------------------------'; cr.
			aStream nextPutAll: 'Process: ',  (p ifNil: [ 'other processes'] ifNotNil: [ p browserPrintString]); cr.
			aStream nextPutAll: '--------------------------------'; cr."
			g sort do:[:aSon | 
				aSon 
					treeMakeForTabs: OrderedCollection new
					thisTab: ''
					total: total
					totalTime: totalTime
					tallyExact: false
					parentTally: nil]].
	].
	