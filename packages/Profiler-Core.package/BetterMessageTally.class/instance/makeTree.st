printing
makeTree

	"aStream nextPutAll: '**Tree**'; cr."
	self
		rootMakeForTotal: tally
		totalTime: time
	"aStream nextPut: Character newPage; cr.
	aStream nextPutAll: '**Leaves**'; cr.
	self
		leavesPrintOn: aStream
		threshold: threshold"