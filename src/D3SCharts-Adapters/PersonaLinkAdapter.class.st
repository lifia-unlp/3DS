"
I represent an adapter of the Persona class for chart's examples

My main responsibilities - I comform all the message's protocol for the ForceDirectedLinkGraphChartAdapter

Public API and Key Messages
	- linkValue => link weight
	- source => node's origin information
	- target => node's destination information


- how to create instances:

 adapter := PersonaLinkAdapter withAdaptee: aPersonaSource withAdapteeTarget: aPersonaTarget

"
Class {
	#name : #PersonaLinkAdapter,
	#superclass : #ForceDirectedLinkGraphChartAdapter,
	#category : #'D3SCharts-Adapters'
}

{ #category : #'accessing - private' }
PersonaLinkAdapter >> linkValue [ 
	^ 1
]

{ #category : #accessing }
PersonaLinkAdapter >> source [ 

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adaptee nombre;
		nextPutAll: ' ';
		nextPutAll: adaptee apellido.

	^ stream contents
]

{ #category : #accessing }
PersonaLinkAdapter >> target [ 

	| stream |
	stream := String new writeStream.
	stream
		nextPutAll: adapteeTarget nombre;
		nextPutAll: ' ';
		nextPutAll: adapteeTarget apellido.

	^ stream contents
]
