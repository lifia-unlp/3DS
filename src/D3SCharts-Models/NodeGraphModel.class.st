Class {
	#name : #NodeGraphModel,
	#superclass : #D3SModel,
	#instVars : [
		'id',
		'group'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
NodeGraphModel class >> id: anIdValue group: aGroupValue [

	^ self new
		  id: anIdValue;
		  group: aGroupValue;
		  yourself
]

{ #category : #'accessing - private' }
NodeGraphModel >> group [

	^ group
]

{ #category : #'accessing - private' }
NodeGraphModel >> group: anObject [

	group := anObject
]

{ #category : #'accessing - private' }
NodeGraphModel >> id [

	^ id
]

{ #category : #'accessing - private' }
NodeGraphModel >> id: anObject [

	id := anObject
]

{ #category : #initialization }
NodeGraphModel >> initialize [

	super initialize.
	model := D3SDictionary new.
]

{ #category : #accessing }
NodeGraphModel >> model [

	"Returns the info model in a dictionary that represents de JSON data for chart"
	model
		addKey: 'id' withValue: id;
		addKey: 'group' withValue: group.

	^ model printString
]
