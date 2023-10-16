Class {
	#name : #ChartColorSchemeOption,
	#superclass : #ChartColorSchemeOptionInterface,
	#instVars : [
		'colors'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #'accessing - private' }
ChartColorSchemeOption >> colors [

	^ colors printScheme 
]

{ #category : #'accessing - private' }
ChartColorSchemeOption >> colors: anObject [

	colors := anObject
]

{ #category : #printing }
ChartColorSchemeOption >> printColorScheme [

	self subclassResponsibility
]
