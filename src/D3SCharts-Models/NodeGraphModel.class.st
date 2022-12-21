"
I represent a protocol that the node model must to conform to generate the information for Force-Directed Graph Chart's model

My main responsibilities - I represent all the information that must be added to the node model for graph representation

Public API and Key Messages

- model => representation of graph information in JSON format through the D3SCharts-Parsers
"
Class {
	#name : #NodeGraphModel,
	#superclass : #D3SModel,
	#instVars : [
		'id',
		'group',
		'title'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
NodeGraphModel class >> id: anIdValue group: aGroupValue title: aTitleText [

	^ self new
		  id: anIdValue;
		  group: aGroupValue;
		  title: aTitleText;
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
		addKey: 'group' withValue: group;
		addKey: 'title' withValue: title.

	^ model printString
]

{ #category : #'accessing - private' }
NodeGraphModel >> title [

	^ title
]

{ #category : #'accessing - private' }
NodeGraphModel >> title: anObject [

	title := anObject
]
