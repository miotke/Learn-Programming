""" Model of restaurants to randomly pick from """
import random

class Restaurants:
    restaurants = ['Dahlia Bakery',
                   'Thai 22',
                   'PotBelly',
                   'Great State',
                   'Marination',
                   'Home Remedy',
                   'Assembly Hall',
                   'Shake Shack',
                   'Chiptole',
    ]


    def list_restaurants(self):
        for index, restaurant_name in enumerate(self.restaurants):
            print(index, restaurant_name)


    def pick_restaurant(self):
        print(random.choice(self.restaurants))
