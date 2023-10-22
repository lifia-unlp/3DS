"
I represent a protocol that all the chart models must to conform

My main responsibilities - I represent all the basics information that must be added to the data model for graph representation

Public API and Key Messages

	- model (abstract): representation of the model's graph information
"
Class {
	#name : #D3SModel,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #'accessing - private' }
D3SModel >> model [

	"This method is required to generate the JSON data to print the model information to the chart using the D3S Parsers objects"

	self subclassResponsibility
]

{ #category : #'accessing - private' }
D3SModel >> model: anObject [

	model := anObject
]
