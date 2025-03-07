Class {
	#name : #JbNumberParserTest,
	#superclass : #PPCompositeParserTest,
	#category : #'Jauburn-Parser-Tests'
}

{ #category : #accessing }
JbNumberParserTest >> parserClass [ 

	^JbNumberParser 
]

{ #category : #tests }
JbNumberParserTest >> testCanParseDigit [

	self assert: (self parse: '5' rule: #digit) equals: $5.
	self assert: (self parse: '9' rule: #digit) equals: $9.
	self assert: (self parse: '0' rule: #digit) equals: $0.
	self fail: '-' rule: #digit.
	self fail: 'abc' rule: #digit
]

{ #category : #tests }
JbNumberParserTest >> testCanParseDigitNotZero [

	self assert: (self parse: '5' rule: #digitNotZero) equals: $5.
	self assert: (self parse: '9' rule: #digitNotZero) equals: $9.
	self fail: '-' rule: #digitNotZero.
	self fail: '0' rule: #digitNotZero.
	self fail: 'abc' rule: #digitNotZero
]

{ #category : #tests }
JbNumberParserTest >> testCanParseNegativeMultidigitInteger [

	self assert: '-3847' is: -3847.
	self assert: '-1273651' is: -1273651.

]

{ #category : #tests }
JbNumberParserTest >> testCanParseNegativeSingleDigitInteger [

	self assert: '-9' is: -9.

]

{ #category : #tests }
JbNumberParserTest >> testCanParseNumber [
	self assert: '0.1231' is: 0.1231.
	self assert: '120931.165235112312414' is: 120931.165235112312414.
	self assert: '-0.1298371' is:-0.1298371.
	self assert: '-1283712.999198231' is: -1283712.999198231.

]

{ #category : #tests }
JbNumberParserTest >> testCanParsePositiveMultidigitInteger [

	self assert: '1233' is: 1233.
	self assert: '8347563' is: 8347563.

]

{ #category : #tests }
JbNumberParserTest >> testCanParsePositiveSingleDigitInteger [

	self assert: '3' is: 3.
	self assert: '0' is: 0.
	self assert: '9' is: 9
]

{ #category : #tests }
JbNumberParserTest >> testNotIntegers [

	self fail: '-' rule: #integer.
	self fail: '0876' rule: #integer.
	self fail: 'xqwdqw' rule: #integer.
]

{ #category : #tests }
JbNumberParserTest >> testNotNumbers [

	self fail: 'monkey.123' rule: #number.
	self fail: '123.whatever' rule: #number.
	self fail: '-191whatnot.456' rule: #number.
		self fail: '.1231' rule: #number.
	

]
