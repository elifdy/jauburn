Class {
	#name : #JbIfElseNode,
	#superclass : #JbAbstractSyntaxTreeNode,
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
