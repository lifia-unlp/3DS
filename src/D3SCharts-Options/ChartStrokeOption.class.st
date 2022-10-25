Class {
	#name : #ChartStrokeOption,
	#superclass : #Object,
	#instVars : [
		'stroke',
		'opacity',
		'width'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
ChartStrokeOption class >> stroke: aValue [

	^ self stroke: aValue opacity: 0.7 width: 100
]

{ #category : #creation }
ChartStrokeOption class >> stroke: aValue opacity: aOpacityValue width: aWidthValue [

	^ self new
		  stroke: aValue;
		  opacity: aOpacityValue;
		  width: aWidthValue;
		  yourself
]

{ #category : #accessing }
ChartStrokeOption >> opacity [

	^ opacity
]

{ #category : #accessing }
ChartStrokeOption >> opacity: anObject [

	opacity := anObject
]

{ #category : #printing }
ChartStrokeOption >> printStrokeOptions [

^ '
  stroke:', stroke printString,',
  strokeWidth:', width printString ,',
  strokeOpacity:', opacity printString ,','
]

{ #category : #accessing }
ChartStrokeOption >> stroke [

	^ stroke
]

{ #category : #accessing }
ChartStrokeOption >> stroke: anObject [

	stroke := anObject
]

{ #category : #accessing }
ChartStrokeOption >> width [

	^ width
]

{ #category : #accessing }
ChartStrokeOption >> width: anObject [

	width := anObject
]
