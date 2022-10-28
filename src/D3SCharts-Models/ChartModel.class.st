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
