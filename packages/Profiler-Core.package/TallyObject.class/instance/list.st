plugging
list

	^ Array
		with: ('Percentage: ' , (percentage) asString , '%')
		with: ('Time: ' , (time) asString , 'ms')
		with: ('BlockNesting: ' , (blockNesting))
		with: ('Has children: ' , (tallyChildren notNil))
		with: ('Total parents: ' , (totalParents))
		with: ('Is primitive: ' , (isPrimitive))