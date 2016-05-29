as yet unclassified
asString

	^ ((item tallyClass) asString) , ' >> ' , ((item tallyMethod )  asString) , ((item isPrimitive) ifTrue: [' (PRIMITIVE)'])