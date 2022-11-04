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

{ #category : #accessing }
CircularChartStyleOption >> radius [

	^ radius
]

{ #category : #accessing }
CircularChartStyleOption >> radius: anObject [

	radius := anObject
]
