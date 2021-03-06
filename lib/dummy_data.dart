import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = const [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Platinum Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    duration: '1700',
    description: "What is Lorem Ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry Lorem Ipsum has been the industry's standard dummy text ever since the 1500s when an unknown printer took a galley of type and scrambled it to make a type specimen book it has?",
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00',
      '04:00',
      '06:00',
      '08:00',
      '10:00',
      '12:00',
      '02:00',
      '04:00',
      '06:00',
      '24:00',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],    
    amenitiesImageUrl: [
      'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
      'https://en.wikipedia.org/wiki/Health_club#/media/File:Cycle_Class_at_a_Gym.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Amenity Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
    duration: '1500',
    description: 'Recent posts from all hashtags are temporarily hidden to help prevent the spread of possible false information and harmful content related to the election.',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
      'https://en.wikipedia.org/wiki/Health_club#/media/File:Cycle_Class_at_a_Gym.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Gold Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
    duration: '1000',
    description: 'Recent posts from all hashtags are temporarily hidden to help prevent the spread of possible false information and harmful content related to the election.',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/33/Sunny_Deol_snapped_during_Pal_Pal_Dil_Ke_Paas_promotions_in_New_Delhi.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
      'Sunny pajji'
    ],
    trainersGender: [
      'Male',
      'Female',
      'Mard'
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Fitness Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Challenging,
    imageUrl:
        'https://en.wikipedia.org/wiki/Health_club#/media/File:Cycle_Class_at_a_Gym.JPG',
    duration: '800',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Laddu Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
    duration: '700',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
      'https://en.wikipedia.org/wiki/Health_club#/media/File:Cycle_Class_at_a_Gym.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Peada Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: '2000',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: '1200',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
      'https://en.wikipedia.org/wiki/Health_club#/media/File:Cycle_Class_at_a_Gym.JPG',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Happy Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: '2500',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
    ],
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Bagal Wali Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: '2100',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Gym_Cardio_Area.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/b/bd/Kuokkala_Graniitti_-_gym.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/3/36/Gym_Free-weights_Area.jpg',
    ],
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Teri Gym',
    affordability: 'Kurukshetra University, Kurukshetra',
    //complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
    duration: '2001',
    description: '41 Tomatoes',
    steps: [
      'Dumbles',
      'Rodes',
      'Weights',
      'Mates',
      'Toilet',
      'Mates',
    ],
    trainersGender: [
      'Male',
      'Female',
    ],
    trainersImgUrl:[
      'https://upload.wikimedia.org/wikipedia/commons/4/48/Outdoors-man-portrait_%28cropped%29.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/0/0c/Sunny_Leone_for_%27Sunny_Ka_New_Year_Call%27_campaign.jpg'

    ],
    trainersName: [
      'Kavi bhaiya',
      'Kavita bhabhi',
    ],
    timings: [
      '02:00 am',
      '04:00 am',
      '06:00 am',
      '08:00 am',
      '10:00 am',
      '12:00 pm',
      '02:00 pm',
      '04:00 pm',
      '06:00 pm',
      '08:00 pm',
    ],
    membership:[
      'Monthly',
      'Quarterly',
      'Half Yearly',
      'Annually',
    ],
    membershipPlans:[
      '900',
      '2500',
      '5000',
      '7500',
    ],
    
    amenitiesImageUrl: [
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Lockers_in_modern_change_room.JPG',
      'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
      'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
      'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
      'https://upload.wikimedia.org/wikipedia/commons/d/d6/Personal_Trainer_-_Treinador_Pessoal.jpg',
      ],
  ),
];
