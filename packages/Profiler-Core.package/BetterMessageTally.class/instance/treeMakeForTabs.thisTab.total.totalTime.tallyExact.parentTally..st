printing
treeMakeForTabs: tabs thisTab: myTab total: total totalTime: totalTime tallyExact: isExact parentTally: parentTally
	| sons newTally |
	
	(tabs size > 0)
		ifTrue: [
			newTally := self calculateTallyObjectForTotal: total totalTime: totalTime tallyParent: parentTally.
			TallyObjectCollection add: newTally].
	sons := isExact ifTrue: [receivers] ifFalse: [self sonsOver].
	sons isEmpty 
		ifFalse:
			[tabs addLast: myTab.
			sons sort.
			1 to: sons size do: [ :i | 
				| sonTab |
				sonTab := i < sons size ifTrue: ['  |'] ifFalse: ['  '].
				(sons at: i)
					treeMakeForTabs: (tabs size < self maxTabs 
						ifTrue: [tabs]
						ifFalse: [(tabs select: [:x | x = '[']) copyWith: '['])
					thisTab: sonTab
					total: total
					totalTime: totalTime
					tallyExact: isExact
					parentTally: (i < sons size 
						ifTrue: [newTally]
						ifFalse: [nil])
					].
			tabs removeLast]