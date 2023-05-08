"
I represent a protocol that the Force-Directed Graph Chart's option must to conform

My main responsibilities - I represent all the information that must be added to the data options for graph representation

Public API and Key Messages

  - printOptions => representation of graph's options information


How to create instances:
	
 	options := ForceDirectedGraphChartOption style: aChartStyleOption colorScheme: aChartColorSchemeOption
"
Class {
	#name : #ForceDirectedGraphChartOption,
	#superclass : #ChartOption,
	#instVars : [
		'nodeStroke',
		'linkStroke'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #creation }
ForceDirectedGraphChartOption class >> style: aChartStyleOption colorScheme: aChartColorSchemeOption nodeStroke: aNodeStrokeOption linkStroke: aLinkStrokeOption [

	^ self new
		  style: aChartStyleOption;
		  colorScheme: aChartColorSchemeOption;
		  nodeStroke: aNodeStrokeOption;
		  linkStroke: aLinkStrokeOption;
		  yourself
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartOption >> linkStroke [

	^ linkStroke printStrokeOptions
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartOption >> linkStroke: anObject [

	linkStroke := anObject
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartOption >> nodeStroke [

	^ nodeStroke printStrokeOptions
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartOption >> nodeStroke: anObject [

	nodeStroke := anObject
]

{ #category : #printing }
ForceDirectedGraphChartOption >> printOptions [

	"Returns the options model in JSON format"

	^ '{
  nodeId: d => d.id,
  nodeGroup: d => d.group,
  nodeTitle: d => d.title,
  linkSource: ({source}) => source,
  linkTarget: ({target}) => target,
  width:' , self width , ',
  height:' , self height , ',', self nodeStroke , self linkStroke , self colorScheme , '
}'
]
