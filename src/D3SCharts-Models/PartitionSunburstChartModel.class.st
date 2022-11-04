"
I represent a protocol that the Partition Sunburst Chart's model must to conform

My main responsibilities - I represent all the information that must be added to the data model for graph representation

Public API and Key Messages

- addPartitionFrom: aPartitionSunburstChartAdapter => add partition's model from another class adapted for this chart

- printModel => representation of chart information
"
Class {
	#name : #PartitionSunburstChartModel,
	#superclass : #ChartModel,
	#category : #'D3SCharts-Models'
}

{ #category : #adding }
PartitionSunburstChartModel >> createPartitionModelFrom: aPartitionSunburstChartAdapter [

	"Assign a partition sunburst model to the model collection, created through the adapter"

	chartModel := PartitionSunburstModel
		             name: aPartitionSunburstChartAdapter name
		             label: aPartitionSunburstChartAdapter label
		             children: aPartitionSunburstChartAdapter children
		             title: aPartitionSunburstChartAdapter title
		             link: aPartitionSunburstChartAdapter link
		             linkTarget: aPartitionSunburstChartAdapter linkTarget.
]

{ #category : #initialization }
PartitionSunburstChartModel >> initialize [

	super initialize.
	chartModel := PartitionSunburstModel new.
]

{ #category : #printing }
PartitionSunburstChartModel >> printModel [

	^ chartModel model
]
