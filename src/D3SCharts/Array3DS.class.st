Class {
	#name : #Array3DS,
	#superclass : #Object,
	#instVars : [
		'array'
	],
	#category : #D3SCharts
}

{ #category : #'instance creation' }
Array3DS class >> new: anIntSize [
	^ self new
		array: (OrderedCollection new: anIntSize);
		yourself
]

{ #category : #adding }
Array3DS >> add: anObject [

	array add: anObject.
]

{ #category : #accessing }
Array3DS >> array: aCollection [

	array := aCollection.
]

{ #category : #initialization }
Array3DS >> initialize [
   super initialize. 
	array := OrderedCollection new.
]

{ #category : #printing }
Array3DS >> printString [

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
