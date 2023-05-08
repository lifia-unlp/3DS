"
I represent a protocol that all the chart models must to conform

My main responsibilities - I represent all the information that must be added to the data model for graph representation

Public API and Key Messages

	- printModel (abstract): representation of graph information


"
Class {
	#name : #ChartModel,
	#superclass : #Object,
	#instVars : [
		'chartModel'
	],
	#category : #'D3SCharts-Models'
}

{ #category : #'accessing - private' }
ChartModel >> chartModel [

	^ chartModel
]

{ #category : #'accessing - private' }
ChartModel >> chartModel: aChartModel [

	chartModel := aChartModel
]

{ #category : #printing }
ChartModel >> printModel [
	"Returns the model information in JSON format, added in the chart"

	^ chartModel printModel
]
