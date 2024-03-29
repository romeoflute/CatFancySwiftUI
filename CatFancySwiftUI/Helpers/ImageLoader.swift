//
//  ImageLoader.swift
//  CatFancySwiftUI
//
//  Created by Romeo Flauta on 3/16/24.
//

import UIKit

actor ImageLoader {
    private var session = URLSession.shared
    private var loaderStatuses: [URL: LoaderStatus] = [:]
    
    private enum LoaderStatus {
        case inProgress(Task<UIImage, Error>)
        case fetched(UIImage)
    }
    
    func fetch(_ url: URL) async -> UIImage {
        let errorImage = UIImage(resource: .error)
        
        if let status = loaderStatuses[url] {
            switch status {
            case .fetched(let image):
                return image
            case .inProgress(let task):
                return (try? await task.value) ?? errorImage
            }
        }
        
        let task: Task<UIImage, Error> = Task {
            let image: UIImage
            
            do {
                let (imageData, _) = try await session.data(from: url)
                let imageFromNetwork = UIImage(data: imageData)
                image = imageFromNetwork ?? errorImage
            } catch {
                image = errorImage
            }
            
            return image
        }
        
        loaderStatuses[url] = .inProgress(task)
        
        do {
            let image = try await task.value
            loaderStatuses[url] = .fetched(image)
            return image
        } catch {
            loaderStatuses[url] = .fetched(errorImage)
            return errorImage
        }
    }
    
    func setSession(_ session: URLSession) async {
        self.session = session
    }
}
