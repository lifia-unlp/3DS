Class {
	#name : #D3SArray,
	#superclass : #D3SPrinterInterface,
	#instVars : [
		'array'
	],
	#category : #'D3SCharts-Parsers'
}

{ #category : #'instance creation' }
D3SArray class >> new: anIntSize [
	^ self new
		array: (OrderedCollection new: anIntSize);
		yourself
]

{ #category : #adding }
D3SArray >> add: anObject [

	array add: anObject.
]

{ #category : #accessing }
D3SArray >> array: aCollection [

	array := aCollection.
]

{ #category : #initialization }
D3SArray >> initialize [
   super initialize. 
	array := OrderedCollection new.
]

{ #category : #printing }
D3SArray >> printModel [

	"Returns the string in JSON format of the array"

	| stream |
	stream := String new writeStream.
	stream nextPutAll: '['.
	array do: [:each |
			stream nextPutAll: each model.
			stream nextPutAll: ','.
		].
	stream position: stream position - 1.   " Removes the last comma"
	stream nextPutAll: ']'.

	^ stream contents
]

{ #category : #printing }
D3SArray >> printString [

	"Returns the string in JSON format of the array"

	| stream |
	stream := String new writeStream.
	stream nextPutAll: '['.
	array do: [:each |
			stream nextPutAll: each printString.
			stream nextPutAll: ','.
		].
	stream position: stream position - 1.   " Removes the last comma"
	stream nextPutAll: ']'.

	^ stream contents
]

{ #category : #accessing }
D3SArray >> size [

	^ array size
]
