printing
treePrintOn: aStream tabs: tabs thisTab: myTab total: total totalTime: totalTime tallyExact: isExact orThreshold: threshold 
	| sons newTally |
	tabs do: [:tab | aStream nextPutAll: tab].
	(tabs size > 0)
		ifTrue: [
			newTally := self calculateTallyObjectForTotal: total totalTime: totalTime.
			TallyObjectCollection add: newTally].
	sons := isExact ifTrue: [receivers] ifFalse: [self sonsOver: threshold].
	sons isEmpty 
		ifFalse: 
			[
			tabs addLast: myTab.
			sons sort.
			1 to: sons size do: [ :i | 
				| sonTab |
				sonTab := i < sons size ifTrue: ['  |'] ifFalse: ['  '].
				i < sons size
					ifTrue: [
						(sons at: i)
						treePrintOn: aStream
							tabs: (tabs size < self maxTabs 
								ifTrue: [tabs]
								ifFalse: [(tabs select: [:x | x = '[']) copyWith: '['])
							thisTab: sonTab
							total: total
							totalTime: totalTime
							tallyExact: isExact
							orThreshold: threshold
							parentTally: newTally]
					ifFalse: [
						(sons at: i)
						treePrintOn: aStream
							tabs: (tabs size < self maxTabs 
								ifTrue: [tabs]
								ifFalse: [(tabs select: [:x | x = '[']) copyWith: '['])
							thisTab: sonTab
							total: total
							totalTime: totalTime
							tallyExact: isExact
							orThreshold: threshold].
					].
			tabs removeLast]