Class {
	#name : #D3SPartitionSunburstExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #mocking }
D3SPartitionSunburstExampleComponent class >> modelMock [

	"Returns an Array of Dictionaries with an example for this chart"

	| model  adapter |

	model := PartitionSunburstChartModel new.

	adapter := ObjectPartitionSunburstAdapter withAdaptee: Stream.
	
	model createPartitionModelFrom: adapter.
	
	^ model
]

{ #category : #mocking }
D3SPartitionSunburstExampleComponent class >> optionsMock [

	| style options margin color |

	color := PartitionSunburstSchemeColor colors: Tableau10ColorScheme new.

	margin := ChartMarginOption margin: 1.

	style := CircularChartStyleOption width: 900 height: 900.

	options := PartitionSunburstChartOption
		           style: style
		           margin: margin
		           colorScheme: color.
	^ options
]

{ #category : #accessing }
D3SPartitionSunburstExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3SPartitionSunburstExampleComponent >> initialize [

	| model option |
	super initialize.
	model := self class modelMock.
	option := self class optionsMock.
	graph := D3SPartitionSunburstComponent model: model options: option
]

{ #category : #rendering }
D3SPartitionSunburstExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
