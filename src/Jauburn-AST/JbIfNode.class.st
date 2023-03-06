Class {
	#name : #JbIfNode,
	#superclass : #JbAbstractSyntaxTreeNode,
	#instVars : [
		'condition',
		'ifReturn'
	],
	#category : #'Jauburn-AST-Core'
}

{ #category : #accessing }
JbIfNode >> condition [
^condition
]

{ #category : #accessing }
JbIfNode >> condition:anObject [
condition:=anObject
]

{ #category : #accessing }
JbIfNode >> executeIn: environment [

	| out |
	out := self condition evaluateIn: environment.
	^ out ifTrue: [ 
		  self ifReturn do: [ :str | str executeIn: environment ] ].
]

{ #category : #accessing }
JbIfNode >> ifReturn [
^ifReturn
]

{ #category : #accessing }
JbIfNode >> ifReturn:anObject [
ifReturn:=anObject
]
