"
I represent a protocol that the Circle Packing Bubble Chart's option must to conform

My main responsibilities - I represent all the information that must be added to the data options for graph representation

Public API and Key Messages

  - printOptions => representation of graph's options information


How to create instances:
	
 	options := CirclePackingBubbleChartOption style: aChartStyleOption margin: aChartMarginOption colorScheme: aChartColorSchemeOption stroke: aChartStrokeOption
"
Class {
	#name : #CirclePackingBubbleChartOption,
	#superclass : #ChartOption,
	#instVars : [
		'margin',
		'stroke'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
CirclePackingBubbleChartOption class >> style: aChartStyleOption margin: aChartMarginOption colorScheme: aChartColorSchemeOption stroke: aChartStrokeOption [

	^ self new
		  style: aChartStyleOption;
		  colorScheme: aChartColorSchemeOption;
		  margin: aChartMarginOption;
		  stroke: aChartStrokeOption;
		  yourself
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartOption >> margin [

	^ margin printMarginOptions
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartOption >> margin: aChartMarginOption [

	margin := aChartMarginOption
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartOption >> padding [

	"Returns the padding between circles"

	^ style padding printString
]

{ #category : #printing }
CirclePackingBubbleChartOption >> printOptions [

	"Returns the options model in JSON format"

	^ '{
  label: d => d.label,
  value: d => d.value,
  group: d => d.group,
  title: d => d.title,
  link: d => d.link,
  linkTarget: d => d.linkTarget,
  width:' , self width , ',
  height:' , self height , ',
  padding:' , self padding , ',' , self margin , self stroke, self colorScheme , '}'
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartOption >> stroke [

	"Returns a static stroke around the bubbles"

	^ stroke printStrokeOptions 
]

{ #category : #'accessing - private' }
CirclePackingBubbleChartOption >> stroke: aFloatValue [

	"Assign a value to the static stroke around the bubbles"

	stroke := aFloatValue
]
