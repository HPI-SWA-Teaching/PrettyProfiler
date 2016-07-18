bottlenecks
markBottlenecks

| maxTotalParents |

	maxTotalParents := (TallyObjectCollection inject: (TallyObject new) into: [:t1 :t2 | (t1 totalParents > t2 totalParents)
		ifTrue: [t1]
		ifFalse: [t2]]) totalParents.
	
	(TallyObjectCollection select: [:t | t totalParents = maxTotalParents]) do: [:t |
		((t percentage > 50) and: [t isPrimitive = false])
			ifTrue: [t isBottleneck: true.
				self markParentsOfBottleneck: t]] 
	