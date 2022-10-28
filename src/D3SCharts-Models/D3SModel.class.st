Class {
	#name : #D3SModel,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #accessing }
D3SModel >> model [

	"This method is required to generate the JSON data to print the model information to the chart using the D3S Parsers objects"

	self subclassResponsibility
]

{ #category : #accessing }
D3SModel >> model: anObject [

	model := anObject
]
