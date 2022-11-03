Class {
	#name : #Alumno,
	#superclass : #D3SChartsDomainExamples,
	#instVars : [
		'nombre',
		'anioCarrera',
		'materiasAprobadas',
		'anioInscripcion'
	],
	#category : #'D3SCharts-Examples'
}

{ #category : #creation }
Alumno class >> nombre: aNameText materiasAprobadas: aValue anioInscripcion: aYear anioCarrera: aCarreerYear [

	^ self new
		  nombre: aNameText;
		  materiasAprobadas: aValue;
		  anioInscripcion: aYear;
		  anioCarrera: aCarreerYear;
		  yourself
]

{ #category : #accessing }
Alumno >> anioCarrera [

	^ anioCarrera printString
]

{ #category : #accessing }
Alumno >> anioCarrera: anObject [

	anioCarrera := anObject
]

{ #category : #accessing }
Alumno >> anioInscripcion [

	^ anioInscripcion printString
]

{ #category : #accessing }
Alumno >> anioInscripcion: anObject [

	anioInscripcion := anObject
]

{ #category : #accessing }
Alumno >> materiasAprobadas [

	^ materiasAprobadas printString
]

{ #category : #accessing }
Alumno >> materiasAprobadas: anObject [

	materiasAprobadas := anObject
]

{ #category : #accessing }
Alumno >> nombre [

	^ nombre
]

{ #category : #accessing }
Alumno >> nombre: anObject [

	nombre := anObject
]
