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
JbIfNode >> condition: anObject [
condition := anObject
]

{ #category : #accessing }
JbIfNode >> ifReturn [
^ifReturn
]

{ #category : #accessing }
JbIfNode >> ifReturn: anObject [
ifReturn:= anObject
]
