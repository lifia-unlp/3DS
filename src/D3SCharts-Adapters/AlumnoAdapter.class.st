Class {
	#name : #AlumnoAdapter,
	#superclass : #CirclePackingBubbleChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
AlumnoAdapter >> bubbleValue [

	^ adaptee materiasAprobadas  
]

{ #category : #accessing }
AlumnoAdapter >> group [

	^ adaptee anioCarrera printString
]

{ #category : #accessing }
AlumnoAdapter >> label [

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee nombre;
		nextPutAll: ' \n';
		nextPutAll: ' Año Ingreso: ';
		nextPutAll: adaptee anioInscripcion.

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
		nextPutAll: adaptee nombre;
		nextPutAll: ' \n';
		nextPutAll: ' Año Ingreso: ';
		nextPutAll: adaptee anioInscripcion.

	^ stream contents
]

{ #category : #accessing }
AlumnoAdapter >> title [

	^ adaptee anioInscripcion 
]
