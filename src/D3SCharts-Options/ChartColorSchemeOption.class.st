Class {
	#name : #ChartColorSchemeOption,
	#superclass : #Object,
	#instVars : [
		'colors'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #accessing }
ChartColorSchemeOption >> colors [

	^ colors printScheme 
]

{ #category : #accessing }
ChartColorSchemeOption >> colors: anObject [

	colors := anObject
]

{ #category : #printing }
ChartColorSchemeOption >> printColorScheme [

	self subclassResponsibility
]
