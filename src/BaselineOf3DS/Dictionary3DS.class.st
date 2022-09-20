Class {
	#name : #Dictionary3DS,
	#superclass : #Object,
	#instVars : [
		'dictionary'
	],
	#category : #BaselineOf3DS
}

{ #category : #adding }
Dictionary3DS >> addKey: aKey withChildren: anObject [

	dictionary at: aKey put: anObject. 
]

{ #category : #adding }
Dictionary3DS >> addKey: aKey withValue: aValue [

	dictionary at: aKey put: aValue. 
]

{ #category : #initialization }
Dictionary3DS >> initialize [
   super initialize. 
	dictionary := Dictionary new.
]

{ #category : #printing }
Dictionary3DS >> printString [
	"DReturns the dictionary with format like JSON"

	| stream |
	stream := String new writeStream.

	stream nextPutAll: '{'.
	dictionary keysAndValuesDo: [ :k :v | 
				stream
					nextPutAll: '"';
					nextPutAll: k;
					nextPutAll: '":';
					nextPutAll: v printString;
					nextPutAll: ',' ].
	stream position: stream position - 1.   " Removes the last comma"
	stream nextPutAll: '}'.
	
	^ stream contents
]
