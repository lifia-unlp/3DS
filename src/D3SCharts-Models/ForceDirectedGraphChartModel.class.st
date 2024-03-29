"
I represent a protocol that the Force-Directed Graph Chart's model must to conform

My main responsibilities - I represent all the information that must be added to the data model for graph representation

Public API and Key Messages

- addLinkFrom: aCirclePackingBubbleChartAdapter => add link's model from another class adapted for this chart

- addNodeFrom: aCirclePackingBubbleChartAdapter => add node's model from another class adapted for this chart

- printModel => representation of graph information
"
Class {
	#name : #ForceDirectedGraphChartModel,
	#superclass : #ChartModel,
	#instVars : [
		'nodes',
		'links'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #adding }
ForceDirectedGraphChartModel >> addLinkFrom: aLinkGraphAdapter [

	"Add a Link graph model to the model collection, created through the adapter"

	| link |
	link := LinkGraphModel
		        source: aLinkGraphAdapter source
		        target: aLinkGraphAdapter target
		        value: aLinkGraphAdapter linkValue.
	links add: link
]

{ #category : #adding }
ForceDirectedGraphChartModel >> addNodeFrom: aNodeGraphAdapter [

	"Add a Node graph model to the model collection, created through the adapter"

	| node |
	node := NodeGraphModel
		        id: aNodeGraphAdapter id
		        group: aNodeGraphAdapter group
		        title: aNodeGraphAdapter title.
	nodes add: node
]

{ #category : #initialization }
ForceDirectedGraphChartModel >> initialize [

	super initialize.
	chartModel := D3SDictionary new.
	nodes := D3SArray new.
	links := D3SArray new.
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartModel >> links [

	^ links
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartModel >> links: anObject [

	links := anObject
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartModel >> nodes [

	^ nodes
]

{ #category : #'accessing - private' }
ForceDirectedGraphChartModel >> nodes: anObject [

	nodes := anObject
]

{ #category : #printing }
ForceDirectedGraphChartModel >> printModel [ 
	
	chartModel addKey: 'nodes' withValue: nodes.
	chartModel addKey: 'links' withValue: links.
	^ chartModel printModel
]
