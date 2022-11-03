Class {
	#name : #D3SCirclePackingBubbleChartExampleComponent,
	#superclass : #WAComponent,
	#instVars : [
		'graph'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #mocking }
D3SCirclePackingBubbleChartExampleComponent class >> modelMock [

	"Returns an Array of Dictionaries with an example for this chart"

	| model alumno1 alumno2 alumno3 alumno4 alumno5 adapter alumnos cantAlumnos |
	alumno1 := Alumno
		           nombre: 'Agustin'
		           materiasAprobadas: 23
		           anioInscripcion: 2018
		           anioCarrera: 4.

	alumno2 := Alumno
		           nombre: 'Martina'
		           materiasAprobadas: 3
		           anioInscripcion: 2021
		           anioCarrera: 1.

	alumno3 := Alumno
		           nombre: 'Alejo'
		           materiasAprobadas: 8
		           anioInscripcion: 2018
		           anioCarrera: 3.

	alumno4 := Alumno
		           nombre: 'Gisela'
		           materiasAprobadas: 4
		           anioInscripcion: 2021
		           anioCarrera: 1.

	alumno5 := Alumno
		           nombre: 'Gustavo'
		           materiasAprobadas: 11
		           anioInscripcion: 2016
		           anioCarrera: 3.

	alumnos := OrderedCollection new.
	alumnos
		add: alumno1;
		add: alumno2;
		add: alumno3;
		add: alumno4;
		add: alumno5.

	cantAlumnos := alumnos size.

	model := CirclePackingBubbleChartModel new.

	1 to: cantAlumnos do: [ :each | 
		adapter := AlumnoAdapter withAdaptee: (alumnos at: each).
		model addBubbleFrom: adapter ].
	^ model
]

{ #category : #mocking }
D3SCirclePackingBubbleChartExampleComponent class >> optionsMock [

	| style options margin stroke color |
	
	color := CirclePackingBubbleSchemeColor colors: (Pastel1ColorScheme new).
	
	margin := ChartMarginOption margin: 10.

	stroke := BubbleStrokeOption stroke: 1.

	style := ChartStyleOption width: 600 height: 800 padding: 10.

	options := CirclePackingBubbleChartOption
		           style: style
		           margin: margin
		           colorScheme: color
		           stroke: stroke.
	^ options
]

{ #category : #accessing }
D3SCirclePackingBubbleChartExampleComponent >> children [

	^ { graph }
]

{ #category : #initialization }
D3SCirclePackingBubbleChartExampleComponent >> initialize [

	| model option |
	super initialize.
	model := self class modelMock.
	option := self class optionsMock.
	graph := D3SCirclePackingBubbleChartComponent
		         model: model
		         options: option
]

{ #category : #rendering }
D3SCirclePackingBubbleChartExampleComponent >> renderContentOn: anHtmlCanvas [

	anHtmlCanvas render: graph.
]
