Class {
	#name : #ChartStyleOption,
	#superclass : #Object,
	#instVars : [
		'width',
		'height',
		'padding'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
ChartStyleOption class >> width: aWidthValue height: aHeightValue [

	^ self width: aWidthValue height: aHeightValue padding: 1
]

{ #category : #creation }
ChartStyleOption class >> width: aWidthValue height: aHeightValue padding: aPaddingValue [

	^ self new
		  width: aWidthValue;
		  height: aHeightValue;
		  padding: aPaddingValue;
		  yourself
]

{ #category : #accessing }
ChartStyleOption >> height [

	^ height
]

{ #category : #accessing }
ChartStyleOption >> height: anObject [

	height := anObject
]

{ #category : #accessing }
ChartStyleOption >> padding [

	^ padding
]

{ #category : #accessing }
ChartStyleOption >> padding: anObject [

	padding := anObject
]

{ #category : #accessing }
ChartStyleOption >> width [

	^ width
]

{ #category : #accessing }
ChartStyleOption >> width: anObject [

	width := anObject
]
