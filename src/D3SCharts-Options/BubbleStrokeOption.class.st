Class {
	#name : #BubbleStrokeOption,
	#superclass : #ChartStrokeOption,
	#category : #'D3SCharts-Options'
}

{ #category : #accessing }
BubbleStrokeOption class >> stroke: aValue [

	^ self stroke: aValue opacity: 0.7 width: 100
]

{ #category : #creation }
BubbleStrokeOption class >> stroke: aValue opacity: aOpacityValue width: aWidthValue [

	^ self new
		  stroke: aValue;
		  opacity: aOpacityValue;
		  width: aWidthValue;
		  yourself
]

{ #category : #printing }
BubbleStrokeOption >> printStrokeOptions [

^ '
  stroke:', stroke printString,',
  strokeWidth:', width printString ,',
  strokeOpacity:', opacity printString ,','
]
