//
//  HomeViewModel.swift
//  NinjaOneProject
//
//

import Foundation

protocol HomeViewModelProtocol {
    func fetchData(_ page: Int)
    func fetchDataByCategory(category: NinjaCategory)
    func fetchById(id: Int)
    func fetchItemByCreature(creature: NinjaCategory)
    
    var monsters: Bindable<DataClass> { get set }
    var equipments: Bindable<Cat> { get set }
    var equipment: Bindable<Item> { get set }
    var creatures: Bindable<Creatures> { get set }
    var error: Bindable<Error> { get set }
}

class HomeViewModel {
    
    // MARK: - Private Properties
    let ninjaService: NinjaRepositoryProtocol
    let coordinator: HomeCoordinator
    var monsters = Bindable<DataClass>()
    var equipments = Bindable<Cat>()
    var equipment = Bindable<Item>()
    var creatures = Bindable<Creatures>()
    var error = Bindable<Error>()
    // MARK: - Inits
    
    init(with service: NinjaRepositoryProtocol, coordinator: HomeCoordinator) {
        self.ninjaService = service
        self.coordinator = coordinator
    }
    
    func fetchData(_ page: Int) {
        ninjaService.fetchData(page) { result in
            switch result {
            
            case .success(let monsters):
                self.monsters.value = monsters
            case .failure(let error):
                self.error.value = error
            }
        }
    }
    
    func fetchDataByCategory(category: NinjaCategory) {
        ninjaService.fetchDataByCategory(category: category) { result in
            switch result {
            case .success(let equipments):
                self.equipments.value = equipments
            case .failure(let error):
                self.error.value = error
            }
        }
    }
    
    func fetchById(id: Int) {
        // TODO: Implement this call to fetch by id.
    }
    
    func fetchItemByCreature(creature: NinjaCategory) {
        ninjaService.fetchDataByCreature(creature: creature) { result in
            switch result {
            case .success(let equipments):
                self.creatures.value = equipments.data
            case .failure(let error):
                self.error.value = error
            }
        }
    }
}
