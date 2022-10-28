Class {
	#name : #D3SForceDirectedGraphExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #mocking }
D3SForceDirectedGraphExampleComponent class >> modelMock [

	"Returns an Array of Dictionaries with an example for this chart"

	| model persona1 persona2 persona3 persona4 persona5 adapter personas cantPersonas |
	
	persona1 := Persona dni: '17666333' nombre: 'Pablo' apellido: 'Dario'.
	
	persona2 := Persona dni: '23444555' nombre: 'Manuela' apellido: 'Dario'.

	persona3 := Persona dni: '35999888' nombre: 'Paula' apellido: 'Dario'.

	persona4 := Persona dni: '40333222' nombre: 'Diego' apellido: 'Martinez'.

	persona5 := Persona dni: '34655444' nombre: 'Laura' apellido: 'Delfino'.

	personas := OrderedCollection new.

	personas
		add: persona1;
		add: persona2;
		add: persona3;
		add: persona4;
		add: persona5.

	cantPersonas := personas size.

	model := ForceDirectedGraphChartModel new.

	1 to: cantPersonas do: [ :each | 
		adapter := PersonaNodeAdapter withAdaptee: (personas at: each).
		model addNodeFrom: adapter ].

	adapter := PersonaLinkAdapter
		           withAdaptee: persona1
		           withAdapteeTarget: persona2.

	model addLinkFrom: adapter.

	adapter := PersonaLinkAdapter
		           withAdaptee: persona1
		           withAdapteeTarget: persona3.

	model addLinkFrom: adapter.

	adapter := PersonaLinkAdapter
		           withAdaptee: persona3
		           withAdapteeTarget: persona2.

	model addLinkFrom: adapter.

	adapter := PersonaLinkAdapter
		           withAdaptee: persona4
		           withAdapteeTarget: persona5.

	model addLinkFrom: adapter.

	adapter := PersonaLinkAdapter
		           withAdaptee: persona3
		           withAdapteeTarget: persona4.

	model addLinkFrom: adapter.

	^ model
]

{ #category : #mocking }
D3SForceDirectedGraphExampleComponent class >> optionsMock [

	^''
]

{ #category : #accessing }
D3SForceDirectedGraphExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3SForceDirectedGraphExampleComponent >> initialize [

	| model option |
	super initialize.
	model := self class modelMock.
	option := self class optionsMock.
	graph := D3SForceDirectedGraphComponent model: model options: option
]

{ #category : #rendering }
D3SForceDirectedGraphExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
