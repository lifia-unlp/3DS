Class {
	#name : #PersonaNodeAdapter,
	#superclass : #ForceDirectedNodeGraphChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #accessing }
PersonaNodeAdapter >> group [

	^ adaptee apellido 
]

{ #category : #accessing }
PersonaNodeAdapter >> id [

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee nombre;
		nextPutAll: ' ';
		nextPutAll: adaptee apellido.

	^ stream contents
]
