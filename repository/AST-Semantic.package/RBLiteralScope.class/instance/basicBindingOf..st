private
basicBindingOf: aString
	^ (class bindingOf: aString) ifNotNil: [ :binding | RBLiteralBinding binding: binding ]