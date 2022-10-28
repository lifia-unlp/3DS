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
