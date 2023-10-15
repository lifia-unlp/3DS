"
I represent the adapter protocol for the ForceDirectedNodeGraphChart's domain objects that must to conform

My main responsibilities - I set that messages must to answer the adapter

Public API and Key Messages

 	- (abstract) id 
	- (abstract) group

	- how to create instances:
	
 		adapter := ForceDirectedNodeGraphChartAdapter withAdaptee: anObjectToAdapt
"
Class {
	#name : #ForceDirectedNodeGraphChartInterface,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
ForceDirectedNodeGraphChartInterface >> group [

	"Returns the label or id to identify and associates a group of nodes"

	self subclassResponsibility
]

{ #category : #accessing }
ForceDirectedNodeGraphChartInterface >> id [

	"Returns the label or id to identify the node"

	self subclassResponsibility
]

{ #category : #accessing }
ForceDirectedNodeGraphChartInterface >> title [

	"Returns the title to show in the node when hover it"

	self subclassResponsibility
]
