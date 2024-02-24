//
//  ImageModel.swift
//  CollectionViews
//
//  Created by Luis Esteban Haro on 11/02/24.
//

import Foundation

struct Image {
    var imageName = ""
    var imageDescription = ""
    var imageTitle = ""
}

extension Image {
    static func getImages() -> [Image] {
        let images: [Image] = [
            Image(imageName: "alps", imageDescription: "A scenic view of the snow-capped mountains of the Alps.", imageTitle: "Alps"),
            Image(imageName: "astronomy", imageDescription: "An image of stars and galaxies in the night sky.", imageTitle: "Astronomy"),
            Image(imageName: "forest", imageDescription: "A lush green forest with tall trees and sunlight filtering through the leaves.", imageTitle: "Forest"),
            Image(imageName: "leaves", imageDescription: "Close-up of colorful autumn leaves.", imageTitle: "Leaves"),
            Image(imageName: "maple", imageDescription: "A large maple tree with red and orange leaves.", imageTitle: "Maple"),
            Image(imageName: "rock", imageDescription: "A large, rugged rock formation.", imageTitle: "Rock"),
            Image(imageName: "sunset", imageDescription: "A beautiful sunset with orange, pink, and purple hues in the sky.", imageTitle: "Sunset"),
        ]
        return images
    }
}

class ImageModel {
    
    func getImages() -> [Image] {
        return Image.getImages()
    }
}
