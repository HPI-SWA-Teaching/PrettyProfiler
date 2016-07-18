printing
treeMakeForTotal: total totalTime: totalTime tallyExact: isExact parentTally: parentTally
	| sons newTally |
	
	newTally := self calculateTallyObjectForTotal: total totalTime: totalTime tallyParent: parentTally.
	TallyObjectCollection add: newTally.
	sons := isExact ifTrue: [receivers] ifFalse: [self sonsOver].
	sons isEmpty 
		ifFalse:
			[sons sort.
			1 to: sons size do: [ :i | 
				| sonTab |
				sonTab := i < sons size ifTrue: ['  |'] ifFalse: ['  '].
				(sons at: i)
					treeMakeForTotal: total
					totalTime: totalTime
					tallyExact: isExact
					parentTally: newTally
					].]