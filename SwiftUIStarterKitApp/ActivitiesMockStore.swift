class ActivitiesMockStore {
    
    static let activities: [ActivitiesItem] = [
        ActivitiesItem(id: 0, activityName: "CREATIVE ARTS", activityNameLabel: "Creative Arts", activityImage: "creative_arts", selectedActivity: false),
        ActivitiesItem(id: 1, activityName: "PHYSICAL CHALLENGES", activityNameLabel: "Physical Challenges", activityImage: "physical_challenges", selectedActivity: false),
        ActivitiesItem(id: 2, activityName: "CULINARY ARTS", activityNameLabel: "Culinary Arts", activityImage: "culinary_arts", selectedActivity: false),
        ActivitiesItem(id: 3, activityName: "TRIVIA & KNOWLEDGE", activityNameLabel: "Trivia & Knowledge", activityImage: "trivia_knowledge", selectedActivity: false)
    ]
    
    static let activityData: [ActivitiesData] = [
        // Creative Arts
        ActivitiesData(id: 0, activitiesPlaces: [
            ActivitiesPlaces(id: 0, activityPlace: "Draw a picture using your non-dominant hand", activityPlaceImage: "location1", famousPointsArray: []),
            ActivitiesPlaces(id: 1, activityPlace: "Create a sculpture using recycled materials", activityPlaceImage: "location2", famousPointsArray: []),
            ActivitiesPlaces(id: 2, activityPlace: "Make a unique, thematic collage from magazine or newspaper cutouts", activityPlaceImage: "location3", famousPointsArray: [])
        ], activityResources: [
            ActivityResource(id: 0, resourceName: "Beginner", resourceDescription: "Suitable for individuals who are new to a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Draw a picture using your non-dominant hand", resourceImage: "resource1_item1", resourceDescription: "Use your non-dominant hand to draw a picture of your choice."),
                ActivityResourcesItem(id: 1, resourceName: "Create a sculpture using recycled materials", resourceImage: "resource1_item2", resourceDescription: "Use any available recycled materials to create a sculpture."),
                ActivityResourcesItem(id: 2, resourceName: "Make a unique, thematic collage from magazine or newspaper cutouts", resourceImage: "resource1_item3", resourceDescription: "Create a collage using magazine or newspaper cutouts. The collage should follow a theme of your choice.")
            ]),
            ActivityResource(id: 1, resourceName: "Intermediate", resourceDescription: "Appropriate for individuals with foundational proficiency in a specific activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Write a short poem or song about a specific topic", resourceImage: "resource2_item1", resourceDescription: "Write a short poem or song on a topic of your choice."),
                ActivityResourcesItem(id: 1, resourceName: "Create a comic strip with a unique character", resourceImage: "resource2_item2", resourceDescription: "Design and draw a comic strip featuring a character of your own creation."),
                ActivityResourcesItem(id: 2, resourceName: "Design and model an outfit from unusual materials", resourceImage: "resource2_item3", resourceDescription: "Use unusual materials like aluminum foil or old newspapers to design and model an outfit.")
            ]),
            ActivityResource(id: 2, resourceName: "Advanced", resourceDescription: "Suitable for experienced individuals in a specific activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Write and perform a two-minute monologue about a given topic", resourceImage: "resource3_item1", resourceDescription: "Compose a two-minute monologue on a topic of your choice and perform it."),
                ActivityResourcesItem(id: 1, resourceName: "Compose and perform a song using an instrument of your choice", resourceImage: "resource3_item2", resourceDescription: "Create a song and perform it using an instrument of your choice."),
                ActivityResourcesItem(id: 2, resourceName: "Create and present a piece of abstract art with a certain theme", resourceImage: "resource3_item3", resourceDescription: "Create an abstract art piece following a specific theme and present it.")
            ])
        ]),
        
        // Physical Challenges
        ActivitiesData(id: 1, activitiesPlaces: [
            ActivitiesPlaces(id: 0, activityPlace: "Balance a book on your head while walking a certain distance", activityPlaceImage: "location1", famousPointsArray: []),
            ActivitiesPlaces(id: 1, activityPlace: "Do ten perfect jumping jacks without stopping", activityPlaceImage: "location2", famousPointsArray: []),
            ActivitiesPlaces(id: 2, activityPlace: "Perform a dance sequence with a set number of steps", activityPlaceImage: "location3", famousPointsArray: [])
        ], activityResources: [
            ActivityResource(id: 0, resourceName: "Beginner", resourceDescription: "Suitable for individuals who are new to a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Balance a book on your head while walking a certain distance", resourceImage: "resource1_item1", resourceDescription: "Try to balance a book on your head while walking a certain distance."),
                ActivityResourcesItem(id: 1, resourceName: "Do ten perfect jumping jacks without stopping", resourceImage: "resource1_item2", resourceDescription: "Perform ten jumping jacks without stopping, keeping your form perfect."),
                ActivityResourcesItem(id: 2, resourceName: "Perform a dance sequence with a set number of steps", resourceImage: "resource1_item3", resourceDescription: "Learn and perform a dance sequence with a set number of steps.")
            ]),
            ActivityResource(id: 1, resourceName: "Intermediate", resourceDescription: "Appropriate for individuals who have acquired a basic understanding or proficiency in a specific activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Master a beginner level yoga pose", resourceImage: "resource2_item1", resourceDescription: "Choose a beginner-level yoga pose and practice until you master it."),
                ActivityResourcesItem(id: 1, resourceName: "Complete a fitness circuit including squats, lunges, and push-ups", resourceImage: "resource2_item2", resourceDescription: "Complete a fitness circuit that includes exercises such as squats, lunges, and push-ups."),
                ActivityResourcesItem(id: 2, resourceName: "Record a minute-long self-choreographed dance routine", resourceImage: "resource2_item3", resourceDescription: "Choreograph a one-minute dance routine and record yourself performing it.")
            ]),
            ActivityResource(id: 2, resourceName: "Advanced", resourceDescription: "Suitable for individuals who have already attained a considerable level of proficiency and expertise in a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Complete a complex workout routine (e.g., High Intensity Interval Training)", resourceImage: "resource3_item1", resourceDescription: "Attempt and complete a complex workout routine, such as High Intensity Interval Training (HIIT)."),
                ActivityResourcesItem(id: 1, resourceName: "Master a challenging yoga pose", resourceImage: "resource3_item2", resourceDescription: "Choose a challenging yoga pose and practice until you master it."),
                ActivityResourcesItem(id: 2, resourceName: "Choreograph and perform a full dance routine", resourceImage: "resource3_item3", resourceDescription: "Choreograph a full-length dance routine and perform it.")
            ])
        ]),
        
        // Culinary Arts
        ActivitiesData(id: 2, activitiesPlaces: [
            ActivitiesPlaces(id: 0, activityPlace: "Invent a new smoothie recipe and try it", activityPlaceImage: "location1", famousPointsArray: []),
            ActivitiesPlaces(id: 1, activityPlace: "Create a unique sandwich with unusual, yet edible, ingredients", activityPlaceImage: "location2", famousPointsArray: []),
            ActivitiesPlaces(id: 2, activityPlace: "Make a healthy snack using only five ingredients", activityPlaceImage: "location3", famousPointsArray: [])
        ], activityResources: [
            ActivityResource(id: 0, resourceName: "Beginner", resourceDescription: "Suitable for individuals who are new to a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Invent a new smoothie recipe and try it", resourceImage: "resource1_item1", resourceDescription: "Come up with a new smoothie recipe using your favorite ingredients and try it."),
                ActivityResourcesItem(id: 1, resourceName: "Create a unique sandwich with unusual, yet edible, ingredients", resourceImage: "resource1_item2", resourceDescription: "Create a unique sandwich using unusual, but edible ingredients."),
                ActivityResourcesItem(id: 2, resourceName: "Make a healthy snack using only five ingredients", resourceImage: "resource1_item3", resourceDescription: "Create a healthy snack using only five ingredients.")
            ]),
            ActivityResource(id: 1, resourceName: "Intermediate", resourceDescription: "Appropriate for individuals who have acquired a basic understanding or proficiency in a specific activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Create a unique dish from a set list of ingredients", resourceImage: "resource2_item1", resourceDescription: "Use a set list of ingredients to create a unique dish."),
                ActivityResourcesItem(id: 1, resourceName: "Invent and prepare a healthy dessert recipe", resourceImage: "resource2_item2", resourceDescription: "Invent a new healthy dessert recipe and prepare it."),
                ActivityResourcesItem(id: 2, resourceName: "Cook a cultural dish from a country of your choice", resourceImage: "resource2_item3", resourceDescription: "Choose a country and cook a traditional dish from that culture.")
            ]),
            ActivityResource(id: 2, resourceName: "Advanced", resourceDescription: "Suitable for individuals who have already attained a considerable level of proficiency and expertise in a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Prepare a 3-course meal with a specific theme (e.g., vegan, gluten-free)", resourceImage: "resource3_item1", resourceDescription: "Prepare a 3-course meal following a specific theme, such as vegan or gluten-free."),
                ActivityResourcesItem(id: 1, resourceName: "Bake and decorate a cake with a unique design", resourceImage: "resource3_item2", resourceDescription: "Bake a cake and decorate it with a unique design."),
                ActivityResourcesItem(id: 2, resourceName: "Invent a gourmet recipe and cook it", resourceImage: "resource3_item3", resourceDescription: "Invent a new gourmet recipe and cook it.")
            ])
        ]),
        
        // Trivia & Knowledge
        ActivitiesData(id: 3, activitiesPlaces: [
            ActivitiesPlaces(id: 0, activityPlace: "Name all countries starting with a specific letter", activityPlaceImage: "location1", famousPointsArray: []),
            ActivitiesPlaces(id: 1, activityPlace: "Recite the entire alphabet backward", activityPlaceImage: "location2", famousPointsArray: []),
            ActivitiesPlaces(id: 2, activityPlace: "List as many synonyms for a particular word as possible within a minute", activityPlaceImage: "location3", famousPointsArray: [])
        ], activityResources: [
            ActivityResource(id: 0, resourceName: "Beginner", resourceDescription: "Suitable for individuals who are new to a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Name all countries starting with a specific letter", resourceImage: "resource1_item1", resourceDescription: "Name all the countries you can that start with a given letter."),
                ActivityResourcesItem(id: 1, resourceName: "Recite the entire alphabet backward", resourceImage: "resource1_item2", resourceDescription: "Try to recite the entire alphabet backward."),
                ActivityResourcesItem(id: 2, resourceName: "List as many synonyms for a particular word as possible within a minute", resourceImage: "resource1_item3", resourceDescription: "Try to list as many synonyms as possible for a given word within one minute.")
            ]),
            ActivityResource(id: 1, resourceName: "Intermediate", resourceDescription: "Appropriate for individuals who have acquired a basic understanding or proficiency in a specific activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Explain a scientific concept in your own words", resourceImage: "resource2_item1", resourceDescription: "Choose a scientific concept and explain it in your own words."),
                ActivityResourcesItem(id: 1, resourceName: "Give a one-minute impromptu speech on a given topic", resourceImage: "resource2_item2", resourceDescription: "Give a one-minute speech on a given topic without any prior preparation."),
                ActivityResourcesItem(id: 2, resourceName: "Present an interesting fact about every planet in our solar system", resourceImage: "resource2_item3", resourceDescription: "Research and present one interesting fact about each planet in our solar system.")
            ]),
            ActivityResource(id: 2, resourceName: "Advanced", resourceDescription: "Suitable for individuals who have already attained a considerable level of proficiency and expertise in a particular activity or skill", resources: [
                ActivityResourcesItem(id: 0, resourceName: "Deliver a 3-minute presentation on an advanced topic of your choice", resourceImage: "resource3_item1", resourceDescription: "Choose an advanced topic and prepare a 3-minute presentation on it."),
                ActivityResourcesItem(id: 1, resourceName: "Explain a complex mathematical theorem or concept in simple terms", resourceImage: "resource3_item2", resourceDescription: "Choose a complex mathematical theorem or concept and explain it in simple, easy-to-understand terms."),
                ActivityResourcesItem(id: 2, resourceName: "Present a detailed analysis of a given historical event", resourceImage: "resource3_item3", resourceDescription: "Choose a historical event and present a detailed analysis of it.")
            ])
        ])
    ]
}

    
