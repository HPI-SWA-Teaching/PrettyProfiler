converting
asString

	^ ((item tallyClass) asString) , ' >> ' , ((item tallyMethod )  asString) , ((item isPrimitive) ifTrue: [' (PRIMITIVE)'])