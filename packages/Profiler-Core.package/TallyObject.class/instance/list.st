plugging
list

	^ { ((self tallyClass) asString,'>>', (self tallyMethod) asString) .
		('Percentage: ' , (percentage printShowingDecimalPlaces: 2) asString , '%').
		('Time: ' , (time) asString , 'ms').
		('BlockNesting: ' , (blockNesting)).
		('Has children: ' , (tallyChildren notNil)).
		('Total parents: ' , (totalParents)).
		('Is primitive: ' , (isPrimitive))} asArray 