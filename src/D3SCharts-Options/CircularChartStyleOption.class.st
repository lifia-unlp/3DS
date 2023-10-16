Class {
	#name : #CircularChartStyleOption,
	#superclass : #ChartStyleOption,
	#instVars : [
		'radius'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
CircularChartStyleOption class >> width: aWidthValue height: aHeightValue [

	^ self width: aWidthValue height: aHeightValue padding: 1 radius: nil
]

{ #category : #creation }
CircularChartStyleOption class >> width: aWidthValue height: aHeightValue padding: aPaddingValue radius: aRadiusValue [

	^ self new
		  width: aWidthValue;
		  height: aHeightValue;
		  padding: aPaddingValue;
		  radius: aRadiusValue;
		  yourself
]

{ #category : #printing }
CircularChartStyleOption >> printRadius [ 
	
	^ radius printString
]

{ #category : #'accessing - private' }
CircularChartStyleOption >> radius [

	^ radius
]

{ #category : #'accessing - private' }
CircularChartStyleOption >> radius: anObject [

	radius := anObject
]
