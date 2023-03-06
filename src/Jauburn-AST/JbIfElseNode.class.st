Class {
	#name : #JbIfElseNode,
	#superclass : #JbIfNode,
	#instVars : [
		'elseReturn'
	],
	#category : #'Jauburn-AST-Core'
}

{ #category : #accessing }
JbIfElseNode >> elseReturn [
^elseReturn
]

{ #category : #accessing }
JbIfElseNode >> elseReturn:anObject [

elseReturn:=anObject
]

{ #category : #accessing }
JbIfElseNode >> executeIn: environment [

	
	| out |
	out := self condition evaluateIn: environment.
	^ out
		  ifTrue: [ self ifReturn do: [ :str | str executeIn: environment ] ]
		  ifFalse: [ 
		  self elseReturn do: [ :str | str executeIn: environment ] ] .
]
