"
I represent a protocol that the Partition Sunburst Chart's option must to conform

My main responsibilities - I represent all the information that must be added to the data options for chart representation

Public API and Key Messages

  - printOptions => representation of chart's options information


How to create instances:
	
 	options := PartitionSunburstChartOption style: aChartStyleOption margin: aChartMarginOption colorScheme: aChartColorSchemeOption
"
Class {
	#name : #PartitionSunburstChartOption,
	#superclass : #ChartOption,
	#instVars : [
		'margin'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
PartitionSunburstChartOption class >> style: aChartStyleOption margin: aChartMarginOption colorScheme: aChartColorSchemeOption [

	^ self new
		  style: aChartStyleOption;
		  colorScheme: aChartColorSchemeOption;
		  margin: aChartMarginOption;
		  yourself
]

{ #category : #'accessing - private' }
PartitionSunburstChartOption >> margin [

	^ margin printMarginOptions
]

{ #category : #'accessing - private' }
PartitionSunburstChartOption >> margin: aChartMarginOption [

	margin := aChartMarginOption
]

{ #category : #'accessing - private' }
PartitionSunburstChartOption >> padding [

	"Returns the separation between arcs"

	^ style padding printString
]

{ #category : #printing }
PartitionSunburstChartOption >> printOptions [

	"Returns the options model in JSON format"

	^ '{
  value: d => d.value, // size of each node (file); null for internal nodes (folders)
  label: d => d.label, // given a node d, returns the name to display on the rectangle
  title: d => d.title, // given a node d, returns its hover text
  link: d => d.link,
  linkTarget: d => d.linkTarget,
  ' , self radius ,'
  width:' , self width , ',
  height:' , self height , ',
  padding:' , self padding , ',' , self margin , self colorScheme , '}'
]

{ #category : #accessing }
PartitionSunburstChartOption >> radius [

	"Returns the outer radius"

	style radius ifNil: [ ^''] ifNotNil: [ ^ 'radius: ' , style radius printString , ',']  
]
