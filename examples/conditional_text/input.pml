[doc [title Conditional Text Test]

    [!def const forTeachers = true;]

    Question: What is the answer?

    [!script
        ~~~
        if ( forTeachers ) {
            doc.insertText ( "Answer: The answer is 42." );
        }
        ~~~
    ]
]
