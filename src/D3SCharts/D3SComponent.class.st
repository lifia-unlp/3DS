"
To register the demo components evaluate

```Smalltalk
D3SComponent subclassesDo: [ :each | WAAdmin register: each asApplicationAt: each name ] 
```
"
Class {
	#name : #D3SComponent,
	#superclass : #WAComponent,
	#instVars : [
		'model',
		'options'
	],
	#category : #D3SCharts
}

{ #category : #creation }
D3SComponent class >> model: aChartModel options: aChartOption [

	^ self new
		  model: aChartModel;
		  options: aChartOption;
		  yourself
]

{ #category : #'accessing - private' }
D3SComponent >> height [

	^ options height
]

{ #category : #script }
D3SComponent >> jsForDivId: anId [

	self subclassResponsibility
]

{ #category : #'accessing - private' }
D3SComponent >> model [
	"Returns the chart model"
	^ model
]

{ #category : #'accessing - private' }
D3SComponent >> model: aChartModel [

	"Assign a ChartOption model to configure the chart graph"

	model := aChartModel
]

{ #category : #'accessing - private' }
D3SComponent >> options [

	"Returns the options in JSON format for send to chart JS functions"

	^ options printOptions
]

{ #category : #'accessing - private' }
D3SComponent >> options: aChartOption [

	"Assign a ChartOption model to configure the chart graph"

	options := aChartOption
]

{ #category : #'accessing - private' }
D3SComponent >> printModelDataString [

	| stream |
	stream := String new writeStream.
	stream nextPutAll: model printModel.

	^ stream contents
]

{ #category : #updating }
D3SComponent >> updateRoot: anHtmlRoot [
    super updateRoot: anHtmlRoot.
    anHtmlRoot javascript url: 'https://d3js.org/d3.v7.js'.

]

{ #category : #'accessing - private' }
D3SComponent >> width [
	^ options width
]
