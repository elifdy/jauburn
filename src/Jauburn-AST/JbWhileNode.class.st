Class {
	#name : #JbWhileNode,
	#superclass : #JbAbstractSyntaxTreeNode,
	#instVars : [
		'while'
	],
	#category : #'Jauburn-AST-Core'
}

{ #category : #accessing }
JbWhileNode >> while [
^while
]

{ #category : #accessing }
JbWhileNode >> while: anObject [
while:=anObject.
]
