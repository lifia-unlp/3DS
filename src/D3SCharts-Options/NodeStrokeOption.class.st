Class {
	#name : #NodeStrokeOption,
	#superclass : #ChartStrokeOption,
	#instVars : [
		'radius'
	],
	#category : #'D3SCharts-Options'
}

{ #category : #creation }
NodeStrokeOption class >> stroke: aTextValue [

	^ self
		  stroke: aTextValue
		  opacity: 1
		  width: 1.5
		  radius: 5
]

{ #category : #creation }
NodeStrokeOption class >> stroke: aTextValue opacity: aOpacityValue width: aWidthValue radius: aRadiusValue [

	^ self new
		  stroke: aTextValue;
		  opacity: aOpacityValue;
		  width: aWidthValue;
		  radius: aRadiusValue;
		  yourself
]

{ #category : #printing }
NodeStrokeOption >> printStrokeOptions [

^ '
  nodeStroke:', stroke printString,',
  nodeStrokeWidth:', width printString ,',
  nodeStrokeOpacity:', opacity printString ,',
  nodeRadius:', radius printString ,','
]

{ #category : #accessing }
NodeStrokeOption >> radius [

	^ radius
]

{ #category : #accessing }
NodeStrokeOption >> radius: anObject [

	radius := anObject
]
