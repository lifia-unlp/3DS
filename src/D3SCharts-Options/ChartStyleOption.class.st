Class {
	#name : #ChartStyleOption,
	#superclass : #ChartStyleOptionInterface,
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

{ #category : #'accessing - private' }
ChartStyleOption >> height [

	^ height
]

{ #category : #'private - initialization' }
ChartStyleOption >> height: anObject [

	height := anObject
]

{ #category : #'accessing - private' }
ChartStyleOption >> padding [

	^ padding
]

{ #category : #'private - initialization' }
ChartStyleOption >> padding: anObject [

	padding := anObject
]

{ #category : #printing }
ChartStyleOption >> printHeight [ 
	
	^ height printString
]

{ #category : #printing }
ChartStyleOption >> printPadding [ 
	
	^ padding printString
]

{ #category : #printing }
ChartStyleOption >> printWidth [ 
	
	^ width printString
]

{ #category : #'accessing - private' }
ChartStyleOption >> width [

	^ width
]

{ #category : #'private - initialization' }
ChartStyleOption >> width: anObject [

	width := anObject
]
