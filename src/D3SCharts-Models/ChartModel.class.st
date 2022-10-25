Class {
	#name : #ChartModel,
	#superclass : #Object,
	#instVars : [
		'adapter'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #printing }
ChartModel >> printModel [
	self subclassResponsibility.
]
