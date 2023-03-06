Class {
	#name : #JbInputNode,
	#superclass : #JbAbstractSyntaxTreeNode,
	#instVars : [
		'inputReturn'
	],
	#category : #'Jauburn-AST-Core'
}

{ #category : #accessing }
JbInputNode >> executeIn: environment [

	^ inputReturn evaluateIn: environment
]

{ #category : #accessing }
JbInputNode >> inputReturn [
^inputReturn
]

{ #category : #accessing }
JbInputNode >> inputReturn:anObject [
inputReturn:=anObject
]
