initialize-release
on: aStream 
	buffer := AnsiWriteStream on: String new.
	stream := aStream.
	classificationTable := self class classificationTable.
	comments := OrderedCollection new