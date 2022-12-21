"
I represent a protocol that all the chart options must to conform

My main responsibilities - I represent all the basics information that must be added to the data options for graph representation

Public API and Key Messages

	- printOptions (abstract): representation of the option's graph information
"
Class {
	#name : #ChartOption,
	#superclass : #Object,
	#instVars : [
		'style',
		'colorScheme'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #'accessing - private' }
ChartOption >> colorScheme [

	"returns an array of colors (for groups)"

	^ colorScheme printColorScheme
]

{ #category : #'accessing - private' }
ChartOption >> colorScheme: anObject [

	colorScheme := anObject
]

{ #category : #'accessing - private' }
ChartOption >> height [

	"Returns height value size in pixels"

	^ style height printString
]

{ #category : #printing }
ChartOption >> printOptions [

	"This method is required to generate the JSON data to print the options information to the chart using the D3S Parsers objects"

	self subclassResponsibility
]

{ #category : #'accessing - private' }
ChartOption >> style [

	^ style
]

{ #category : #'accessing - private' }
ChartOption >> style: aChartStyleOption [

	style := aChartStyleOption
]

{ #category : #'accessing - private' }
ChartOption >> width [

	"Returns width size in pixels"

	^ style width printString
]
