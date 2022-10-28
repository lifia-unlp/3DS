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
	#name : #ForceDirectedNodeGraphChartAdapter,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
ForceDirectedNodeGraphChartAdapter >> group [

	"Returns the label or id to identify and associates a group of nodes"

	self subclassResponsibility
]

{ #category : #accessing }
ForceDirectedNodeGraphChartAdapter >> id [

	"Returns the label or id to identify the node"

	self subclassResponsibility
]
