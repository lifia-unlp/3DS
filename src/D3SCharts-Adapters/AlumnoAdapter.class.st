"
I represent the adapter for Alumno class for the CirclePackingBubbleChart's

My main responsibilities - I set that messages must to answer the Alumno adapter

Public API and Key Messages

 	- label 
	- group
	- bubbleValue
	- title
	- name
	- link 
	- linkTarget

	- how to create instances:
	
 		adapter := AlumnoAdapter withAdaptee: anAlumnoObject
"
Class {
	#name : #AlumnoAdapter,
	#superclass : #CirclePackingBubbleChartInterface,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
AlumnoAdapter >> bubbleValue [

	^ adaptee materiasAprobadas  
]

{ #category : #accessing }
AlumnoAdapter >> group [

	^ adaptee anioCarrera 
]

{ #category : #accessing }
AlumnoAdapter >> label [

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee nombreCompleto;
		nextPutAll: ' \n';
		nextPutAll: ' Materias Aprobadas: ';
		nextPutAll: adaptee materiasAprobadas.

	^ stream contents
]

{ #category : #accessing }
AlumnoAdapter >> link [

	^ ''
]

{ #category : #accessing }
AlumnoAdapter >> linkTarget [ 

	^ ''
]

{ #category : #accessing }
AlumnoAdapter >> name [

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee nombreCompleto;
		nextPutAll: ' \n';
		nextPutAll: ' Año Ingreso: ';
		nextPutAll: adaptee anioInscripcion.

	^ stream contents
]

{ #category : #accessing }
AlumnoAdapter >> title [

	^ adaptee anioInscripcion 
]
