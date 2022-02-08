[ch (id=expressions) [title Expressions]

    [!def
        ~~~
        function priceExampleSnippet ( tag ) {
            insertCodeSnippet ( "input/examples/price/input.pdml", tag )
        }
        ~~~
    ]
    
    Consider a PDML document containing a [c price] field like this:
    [!exp priceExampleSnippet ( "value" )]

    Suppose the price is calculated by the formula [c 2.7183 * (981 + 3.1416)], and the factors in this formula must be updated regularly.
    We also want the formula to be visible in the PDML document.
    We could write:
    [!exp priceExampleSnippet ( "formula" )]

    But now the final value [c 2675.19] isn't directly available anymore.
    An application reading this node would have to parse and evaluate the formula defined as text.
    
    Not very practical!
    
    A PDML [i expression] solves this problem.
    We can use an [c !exp] node and write:
    [!exp priceExampleSnippet ( "exp" )]

    Note how the price formula is simply embedded in an [c !exp] node ([c \[!exp ...\]]):
    [code
        [price [!exp 2.7183 * (981 + 3.1416)]]
               ^^^^^                        ^ 
    code]

    Now the PDML parser will [i evaluate] the expression, and the application reading the document will see the [c price] node as if it were written like this:
    [code \[price [!exp 2.7183 * (981 + 3.1416)]\]]

    Much better.
    But we still need to get rid of the superfluous decimal digits, and round the result to 2 decimals. We'll do that in the next chapter.
]
