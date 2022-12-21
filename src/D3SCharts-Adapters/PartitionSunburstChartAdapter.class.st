"
I represent the adapter protocol for the PartitionSunburstChart's domain objects that must to conform

My main responsibilities - I set that messages must to answer the adapter

Public API and Key Messages

 	- (abstract) label 
	- (abstract) title
	- (abstract) name
	- (abstract) link 
	- (abstract) linkTarget
	- (abstract) children

	- how to create instances:
	
 		adapter := PartitionSunburstChartAdapter withAdaptee: anObjectToAdapt

"
Class {
	#name : #PartitionSunburstChartAdapter,
	#superclass : #D3SChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
PartitionSunburstChartAdapter >> children [

	"Returns the children/s to associete in the partition"

	self subclassResponsibility
]

{ #category : #accessing }
PartitionSunburstChartAdapter >> label [

	"Returns the label to show in the partition"

	self subclassResponsibility
]

{ #category : #accessing }
PartitionSunburstChartAdapter >> link [

	"Returns the link to add in the partition"

	self subclassResponsibility
]

{ #category : #accessing }
PartitionSunburstChartAdapter >> linkTarget [

	"Returns the target link to add in the partition"

	self subclassResponsibility
]

{ #category : #accessing }
PartitionSunburstChartAdapter >> name [

	"Returns the name to identify the partition"

	self subclassResponsibility
]

{ #category : #accessing }
PartitionSunburstChartAdapter >> title [

	"Returns the title to show in the partition"

	self subclassResponsibility
]
