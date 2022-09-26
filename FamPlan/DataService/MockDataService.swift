//
//  MockDataService.swift
//  FamPlan
//
//  Created by Andrew Ushakov on 9/24/22.
//

import SwiftUI
import Combine

class MockDataService: DataServiceProtocol {
    var testData: [Influencer] = []

    init(data: [Influencer]?) {
        self.testData = data ?? [
            Influencer(id: 0, name: "Benjamin Franklin", wakeTime: "5 AM", grindTime: "8 AM", finishTime: "5 PM", bedTime: "10 PM", notion: "Ben is famous for his routine, particularly being such an early riser. You may not want to rise at 5PM, but do consider taking a moment to focus on what you’d like to accomplish for the day before it begins – this sets an intention. He has a pretty regular work schedule (8–5, essentially) but he does only get about 6 hours of sleep a night, and some people need more.",  image: "franklin", description:  "American polymath", expand: false, asterisk: "1) Hobby activites from 5 to 8 AM"),
            Influencer(id: 1, name: "Barack Obama", wakeTime: "6:45 AM", grindTime: "8:50 AM", finishTime: "6:30 PM", bedTime: "10:00 PM", notion: "Barack’s routine is all about simplicity. He focuses just on what matters. (By the way, he also wears a “personal uniform” to eliminate any decision making that isn’t crucial.) He works out, reads, eats, and then gets down to business. Nothing fancy here, and perhaps that’s key.", image: "obama", description: "44th president of the United States", expand: false, asterisk: "1) 45 minutes of workout daily"),
            Influencer(id: 2, name: "Winston Churchill", wakeTime: "7:30 AM", grindTime: "8 AM", finishTime: "5:30 PM", bedTime: "11 PM", notion: "Taking your time to get up in the morning and making leisure out of reading, eating and (uh, dictating?) is definitely great, but not for three and a half hours. Not much else to go off of here, not at least for people who don’t have his particular privileges." , image: "churchill", description: "British statesman", expand: false, asterisk: "\n1) Work on his bed most of all time\n2) Have a nap for productivity"),
            Influencer(id: 3, name: "Elon Musk", wakeTime: "7 AM", grindTime: "8:50 AM", finishTime: "6 PM or 1 AM", bedTime: "1 AM", notion: "Elon Musk, the world's wealthiest person and the CEO of big businesses such as SpaceX and Tesla, is a very busy man but like all of us, he tries his best to balance his professional and personal life. Despite running some of the biggest businesses in the world, Musk makes sure to take out time for his morning rituals, travel, exercise, and spend time with his kid.",  image: "musk", description:  "   Entrepreneur and CEO at SpaceX", expand: false, asterisk: "\n1) Taking shower every day\n2) Daily walk at 4:30 PM"),
            Influencer(id: 4, name: "    Nikola Tesla", wakeTime: "3 AM", grindTime: "9 AM", finishTime: "6 PM", bedTime: "9 AM", notion: "Tesla wore many hats. He excelled in fields like electricity, physics and mechanics - to name just the bare minimum. He obtained around 300 patents for his inventions. Some people think Tesla possessed one of the most prolific and creative minds of human history.",  image: "tesla", description: "       Serbian-American inventor", expand: false, asterisk: "\n1) Walk eight or ten miles every day\n2) Avoid all acid-producing foods")
        ]
    }

    func getData() -> AnyPublisher<[Influencer], Error> {
        Just(testData)
            .tryMap({ $0 })
            .eraseToAnyPublisher()
    }
}
