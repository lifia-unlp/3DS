"
I represent an adapter of the Persona class for chart's examples

My main responsibilities - I comform all the message's protocol for the ForceDirectedNodeGraphChartAdapter

Public API and Key Messages
	- id => node identification
	- group => node's family asociation


- how to create instances:

 adapter := PersonaNodeAdapter withAdaptee: aPersona
"
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

{ #category : #accessing }
PersonaNodeAdapter >> title [

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee dni;
		nextPutAll: ' ';
		nextPutAll: adaptee apellido.

	^ stream contents
]
