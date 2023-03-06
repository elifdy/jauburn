Class {
	#name : #JbWhileNode,
	#superclass : #JbAbstractSyntaxTreeNode,
	#instVars : [
		'condition',
		'whileReturn'
	],
	#category : #'Jauburn-AST-Core'
}

{ #category : #accessing }
JbWhileNode >> condition [
^condition
]

{ #category : #accessing }
JbWhileNode >> condition: anObject [
condition:=anObject.
]

{ #category : #accessing }
JbWhileNode >> executeIn: environment [

	
	| out |
	out := self condition evaluateIn: environment.
	^ out
		  ifTrue: [ self whileReturn do: [ :str | str executeIn: environment ] ].
]

{ #category : #accessing }
JbWhileNode >> whileReturn [
^whileReturn
]

{ #category : #accessing }
JbWhileNode >> whileReturn: anObject [
whileReturn:=anObject.
]
