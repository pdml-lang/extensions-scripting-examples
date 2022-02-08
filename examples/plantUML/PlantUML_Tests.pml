[doc [title PlantUML Tests]

    [!ins-file path = config/scripting/alice_bob.def]

    Alice-Bob image:
    [image source = images/alice_bob.png]

    [!ins-file path = config/scripting/PlantUMLUtils.def]
    
    Alice-Bob image 2:

    [!script insertPlantUMLImage ( "alice_bob_2", `@startuml
        Alice -> Bob: Hello
        Bob -> Alice: Hi
        @enduml` ); ]

    [!ins-file path = config/scripting/PlantUMLUtils_2.def]
    
    Alice-Bob image 3:

    [!script insertPlantUMLImage_2 ( "alice_bob_2", `@startuml
        Alice -> Bob: Hello
        Bob -> Alice: Hi
        @enduml` ); ]

    Alice-Bob image 4:

    [!script insertPlantUMLImage_2 ( "alice_bob_2", `@startuml
        Alice -> Bob: Hello
        Bob -> Alice: Hi
        @enduml` ); ]
]
