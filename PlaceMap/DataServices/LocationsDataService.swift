//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            name: "Pashupatinath",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.710512, longitude: 85.3462376),
            description: "The Pashupatinath Temple (Nepali: पशुपतिनाथ मन्दिर) is a Hindu temple dedicated to Pashupati, a form of Shiva, and is located in Kathmandu, Nepal near the Bagmati River. This temple was classified as a World Heritage Site in 1979. This \"extensive Hindu temple precinct\" is a \"sprawling collection of temples, ashrams, images and inscriptions raised over the centuries along the banks of the sacred Bagmati river\", and is one of seven monument groups in UNESCO's designation of Kathmandu Valley.[1] It is built on an area of 246 hectares (2,460,000 m2)[citation needed] and includes 518 mini-temples and a main pagoda house.",
            imageNames: [
                "Pashupatinath1",
                "Pashupatinath2",
                "Pashupatinath3",
                "Pashupatinath4",
                "Pashupatinath5"
            ],
            link: "https://en.wikipedia.org/wiki/Pashupatinath_Temple"),
        Location(
            name: "Swayambhunath",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.7148996, longitude: 85.2878208),
            description: "Swayambhunath (Devanagari: स्वयम्भू स्तूप; Nepal Bhasa: स्वयंभू; sometimes Swayambu or Swoyambhu) is an ancient religious complex atop a hill in the Kathmandu Valley, west of Kathmandu city. The Tibetan name for the site means 'Sublime Trees' (Wylie: Phags.pa Shing.kun), for the many varieties of trees found on the hill. However, Shingun may be of in Nepal Bhasa name for the complex, Swayambhu, meaning 'self-sprung'.[1] For the Buddhist Newars, in whose mythological history and origin myth as well as day-to-day religious practice Swayambhu occupies a central position, it is probably the most sacred among Buddhist pilgrimage sites. For Tibetans and followers of Tibetan Buddhism, it is second only to Boudha. Swayambhu is the Hindu name.",
            imageNames: [
                "Swayambhunath1",
                "Swayambhunath2",
                "Swayambhunath3",
                "Swayambhunath4"
            ],
            link: "https://en.wikipedia.org/wiki/Swayambhunath"),
        Location(
            name: "Garden of Dreams",
            cityName: "Kathmandu",
            coordinates: CLLocationCoordinate2D(latitude: 27.7141261, longitude: 85.3119292),
            description: "The Garden of Dreams (Nepali:स्वप्न बगैंचा, Newar language : म्हगसया क्यब), also, the Garden of Six Seasons, is a neo-classical garden in Kaiser Mahal Kathmandu, Nepal, built in 1920. Designed by Kishore Narshingh, it consists of 6,895 square metres (74,220 sq ft) of gardens with three pavilions, an amphitheater, ponds, pergolas, and urns. From the mid-1960s, upon the death of its patron, Kaiser Sumsher Rana, it lay in neglect but was recently restored with the help of the Austrian government. \nIn 1998, the old neo-classical garden in Keshar Mahal was to be demolished for the construction of a commercial center. However, Minister of Education Arjun Narsingha KC on the advice of Karna Shakya stopped the demolition work at once and declared it open to the public with a new name, \"The Garden of Dreams\"",
            imageNames: [
                "god1",
                "god2",
                "god3",
                "god4",
            ],
            link: "https://en.wikipedia.org/wiki/Garden_of_Dreams"),
        Location(
            name: "Phewa Lake",
            cityName: "Pokhara",
            coordinates: CLLocationCoordinate2D(latitude: 28.2116264, longitude: 83.9292059),
            description: "Phewa Lake, Phewa Tal or Fewa Lake (Nepali: फेवा ताल, [ˈpʰewa tal]) is a freshwater lake in Nepal formerly called Baidam Tal located in the south of the Pokhara Valley that includes Pokhara city and parts of Sarangkot and Kaskikot. [1] It is the second largest lake in Nepal and the largest in Gandaki Province after the Rara lake in comparison to Nepal's water bodies.[2] It is the most popular and most visited lake in Nepal. Phewa lake is located at an altitude of 742 m (2,434 ft) and covers an area of about 5.7 km2 (2.2 sq mi).[3] It has an average depth of about 8.6 m (28 ft) and a maximum depth of 24 m (79 ft).[4] The maximum water capacity of the lake is approximately 43,000,000 cubic metres (35,000 acre⋅ft).[5] The Annapurna range on the north is only about 28 km (linear distance) away[6] from the lake. The lake is also famous for the reflection of mount Machhapuchhre and other mountain peaks of the Annapurna and Dhaulagiri ranges on its surface.[7] The Tal Barahi Temple is situated on an island in the lake.[8] It is located 4 km from the city's centre Chipledhunga",
            imageNames: [
                "Phewatal1",
                "Phewatal2",
                "Phewatal3",
                "Phewatal4",
            ],
            link: "https://en.wikipedia.org/wiki/Phewa_Lake"),
        Location(
            name: "Sarangkot",
            cityName: "Kaski",
            coordinates: CLLocationCoordinate2D(latitude: 28.2443761, longitude: 83.9463669),
            description: "Sarangkot is Ward 18 of Pokhara, Kaski District, Nepal, after it was merged into the city in 2015. It is a popular tourist destination for those who arrive in Pokhara. At the 1991 Nepal census it had a total population of 5,060 with 1,010 individual households",
            imageNames: [
                "Sarangkot1",
                "Sarangkot2",
                "Sarangkot3",
                "Sarangkot4"
            ],
            link: "https://en.wikipedia.org/wiki/Sarangkot"),
        Location(
            name: "World Peace Pagoda",
            cityName: "Pokhara",
            coordinates: CLLocationCoordinate2D(latitude: 27.4989036, longitude: 83.2736972),
            description: "Shanti Stupa in Pokhara was built by Nipponzan-Myōhōji monk Morioka Sonin with local supporters under the guidance of Nichidatsu Fujii, a Buddhist monk and the founder of Nipponzan-Myōhōji. Shanti is a Sanskrit word meaning peace, also widely used in the Nepali and Hindi languages, and Shanti Stupa means Peace Pagoda. Shanti Stupa shrine was built as a symbol of peace. Situated at the height of 1100 meters on the Anadu Hill, Nichidatsu Fujii laid the foundation stone along with relics of the Buddha on 12 September 1973.[1][2] Nepal has two of the eighty peace pagodas in the world: Shanti Stupa in Lumbini, the birthplace of the Buddha and Shanti Stupa in Pokhara. Shanti Stupa in Pokhara has also become a tourist attraction. It provides a panoramic view of the Annapurna range, Pokhara city and Fewa Lake",
            imageNames: [
                "Shanti-Stupa1",
                "Shanti-Stupa2",
                "Shanti-Stupa3",
                "Shanti-Stupa4"
            ],
            link: "https://en.wikipedia.org/wiki/Shanti_Stupa,_Pokhara"),
    ]
    
}
