"
I represent a protocol that the link model must to conform to generate the information for Force-Directed Graph Chart's model

My main responsibilities - I represent all the information that must be added to the link model for graph representation

Public API and Key Messages

- model => representation of graph information in JSON format through the D3SCharts-Parsers
"
Class {
	#name : #LinkGraphModel,
	#superclass : #D3SModel,
	#instVars : [
		'source',
		'target',
		'linkValue'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
LinkGraphModel class >> source: aSourceValue target: aTargetValue value: aValue [

	^ self new
		  source: aSourceValue;
		  target: aTargetValue;
		  linkValue: aValue;
		  yourself
]

{ #category : #initialization }
LinkGraphModel >> initialize [

	super initialize.
	model := D3SDictionary new.
]

{ #category : #'accessing - private' }
LinkGraphModel >> linkValue [

	^ linkValue
]

{ #category : #'accessing - private' }
LinkGraphModel >> linkValue: anObject [

	linkValue := anObject
]

{ #category : #accessing }
LinkGraphModel >> model [

	"Returns the info model in a dictionary that represents de JSON data for chart"

	model
		addKey: 'source' withValue: source;
		addKey: 'target' withValue: target;
		addKey: 'value' withValue: linkValue.

	^ model printString
]

{ #category : #'accessing - private' }
LinkGraphModel >> source [

	^ source
]

{ #category : #'accessing - private' }
LinkGraphModel >> source: anObject [

	source := anObject
]

{ #category : #'accessing - private' }
LinkGraphModel >> target [

	^ target
]

{ #category : #'accessing - private' }
LinkGraphModel >> target: anObject [

	target := anObject
]
