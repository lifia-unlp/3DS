Class {
	#name : #D3SDictionary,
	#superclass : #Object,
	#instVars : [
		'dictionary'
	],
	#category : #'D3SCharts-Parsers'
}

{ #category : #adding }
D3SDictionary >> addKey: aKey withChildren: anObject [

	dictionary at: aKey put: anObject. 
]

{ #category : #adding }
D3SDictionary >> addKey: aKey withValue: aValue [

	dictionary at: aKey put: aValue. 
]

{ #category : #initialization }
D3SDictionary >> initialize [
   super initialize. 
	dictionary := Dictionary new.
]

{ #category : #printing }
D3SDictionary >> printModel [
	"DReturns the dictionary with format like JSON"

	| stream |
	stream := String new writeStream.

	stream nextPutAll: '{'.
	dictionary keysAndValuesDo: [ :k :v | 
				stream
					nextPutAll: '"';
					nextPutAll: k;
					nextPutAll: '":';
					nextPutAll: v printModel;
					nextPutAll: ',' ].
	stream position: stream position - 1.   " Removes the last comma"
	stream nextPutAll: '}'.
	
	^ stream contents
]

{ #category : #printing }
D3SDictionary >> printString [
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
