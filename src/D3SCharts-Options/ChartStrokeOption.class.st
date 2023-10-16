Class {
	#name : #ChartStrokeOption,
	#superclass : #ChartStrokeOptionInterface,
	#instVars : [
		'stroke',
		'opacity',
		'width'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #'accessing - private' }
ChartStrokeOption >> opacity [

	^ opacity
]

{ #category : #'accessing - private' }
ChartStrokeOption >> opacity: anObject [

	opacity := anObject
]

{ #category : #printing }
ChartStrokeOption >> printStrokeOptions [

	self subclassResponsibility
]

{ #category : #'accessing - private' }
ChartStrokeOption >> stroke [

	^ stroke
]

{ #category : #'accessing - private' }
ChartStrokeOption >> stroke: anObject [

	stroke := anObject
]

{ #category : #'accessing - private' }
ChartStrokeOption >> width [

	^ width
]

{ #category : #'accessing - private' }
ChartStrokeOption >> width: anObject [

	width := anObject
]
