import 'package:movie_category_app/models/movie.dart';

List<Movie> movies = [
  Movie(
    title: 'Everything Everywhere All at Once',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/dd29Kt2p2voyP2sB6p3jC36A7ce.jpg',
    director: 'Daniel Kwan, Daniel Scheinert',
    genre: ['Action', 'Adventure', 'Comedy'],
    score: 8.5,
    isRestricted: true,
    releasedYear: 2022,
    isDubbed: true,
  ),
  Movie(
    title: 'The Shawshank Redemption',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/dd29Kt2p2voyP2sB6p3jC36A7ce.jpg',
    director: 'Frank Darabont',
    genre: ['Drama'],
    score: 9.3,
    isRestricted: true,
    releasedYear: 1994,
    isDubbed: true,
  ),
  Movie(
    title: 'The Godfather',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/I1fkNd5CeJGv56mhrTDoOeMc2r.jpg',
    director: 'Francis Ford Coppola',
    genre: ['Crime', 'Drama'],
    score: 9.2,
    isRestricted: true,
    releasedYear: 1972,
  ),
  Movie(
    title: 'The Dark Knight',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/9ICUbdveP56jRoMMVkXSOr3ceyV.jpg',
    director: 'Christopher Nolan',
    genre: ['Action', 'Crime', 'Drama'],
    score: 9.0,
    isRestricted: true,
    releasedYear: 2008,
  ),
  Movie(
    title: 'Inception',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/zTgjeblxSLSvomt6F6UYtpiD4n7.jpg',
    director: 'Christopher Nolan',
    genre: ['Action', 'Adventure', 'Sci-Fi'],
    score: 8.8,
    isRestricted: true,
    releasedYear: 2010,
    isDubbed: true,
  ),
  Movie(
    title: 'Fight Club',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/eKZ07Ted7VHxQjbuZrRBFOamcKJ.jpg',
    director: 'David Fincher',
    genre: ['Drama'],
    score: 8.8,
    isRestricted: true,
    releasedYear: 1999,
  ),
  Movie(
    title: 'Pulp Fiction',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/6lXRHGoEbnnBUKsuqpL9JxD4DzT.jpg',
    director: 'Quentin Tarantino',
    genre: ['Crime', 'Drama'],
    score: 8.9,
    isRestricted: true,
    releasedYear: 1994,
  ),
  Movie(
    title: 'Forrest Gump',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/xdJxoq0dtkchOkUz5UVKuxn7a2V.jpg',
    director: 'Robert Zemeckis',
    genre: ['Drama', 'Romance'],
    score: 8.8,
    isRestricted: false,
    releasedYear: 1994,
    isDubbed: true,
  ),
  Movie(
    title: 'The Matrix',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/yI9r0iz2XvlevxUzxvdoQmv3yce.jpg',
    director: 'Lana Wachowski, Lilly Wachowski',
    genre: ['Action', 'Sci-Fi'],
    score: 8.7,
    isRestricted: true,
    releasedYear: 1999,
  ),
  Movie(
    title: 'Goodfellas',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/aKuFiU82s5ISJpGZp7YkIr3kCUd.jpg',
    director: 'Martin Scorsese',
    genre: ['Crime', 'Drama'],
    score: 8.7,
    isRestricted: true,
    releasedYear: 1990,
  ),
  Movie(
    title: 'The Silence of the Lambs',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/2hBAfjDlRbamiX7TuzLes2EcnCM.jpg',
    director: 'Jonathan Demme',
    genre: ['Crime', 'Drama', 'Thriller'],
    score: 8.6,
    isRestricted: true,
    releasedYear: 1991,
    isDubbed: true,
  ),
  Movie(
    title: 'Interstellar',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/zDNAeWU0PxKolEX1D8Vn1qWhGjH.jpg',
    director: 'Christopher Nolan',
    genre: ['Adventure', 'Drama', 'Sci-Fi'],
    score: 8.6,
    isRestricted: false,
    releasedYear: 2014,
    isDubbed: true,
  ),
  Movie(
    title: 'Parasite',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/jjHccoFjbqlfr4VGLVLT7yek0Xn.jpg',
    director: 'Bong Joon Ho',
    genre: ['Comedy', 'Drama', 'Thriller'],
    score: 8.6,
    isRestricted: false,
    releasedYear: 2019,
    isDubbed: true,
  ),
  Movie(
    title: 'Gladiator',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/r8de3F8eDaMOvGlbHDTsrubk9jA.jpg',
    director: 'Ridley Scott',
    genre: ['Action', 'Adventure', 'Drama'],
    score: 8.5,
    isRestricted: true,
    releasedYear: 2000,
  ),
  Movie(
    title: 'Titanic',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/132KjhVrWUqKFVfMAKKNkherytA.jpg',
    director: 'James Cameron',
    genre: ['Drama', 'Romance'],
    score: 7.8,
    isRestricted: false,
    releasedYear: 1997,
    isDubbed: true,
  ),
  Movie(
    title: 'The Lord of the Rings: The Return of the King',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/u0qqqJJMCR4KkPim51FZtq0ORzU.jpg',
    director: 'Peter Jackson',
    genre: ['Action', 'Adventure', 'Fantasy'],
    score: 8.9,
    isRestricted: false,
    releasedYear: 2003,
  ),
  Movie(
    title: 'Saving Private Ryan',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/2ATMbU4EljWkWcEJT9TElbQOMYY.jpg',
    director: 'Steven Spielberg',
    genre: ['Drama', 'War'],
    score: 8.6,
    isRestricted: true,
    releasedYear: 1998,
    isDubbed: true,
  ),
  Movie(
    title: 'Schindler\'s List',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/zUqDlC0qk7y7uLV1YNK7l629Bil.jpg',
    director: 'Steven Spielberg',
    genre: ['Biography', 'Drama', 'History'],
    score: 8.9,
    isRestricted: true,
    releasedYear: 1993,
  ),
  Movie(
    title: 'Avatar',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/zygmx5abXeDpr3fWYX4jlXFZ1wh.jpg',
    director: 'James Cameron',
    genre: ['Action', 'Adventure', 'Fantasy'],
    score: 7.8,
    isRestricted: false,
    releasedYear: 2009,
    isDubbed: true,
  ),
  Movie(
    title: 'Star Wars: The Empire Strikes Back',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/w8p1Fp6D0B7QW4iVCTwpnmg2WTW.jpg',
    director: 'Irvin Kershner',
    genre: ['Action', 'Adventure', 'Fantasy'],
    score: 8.7,
    isRestricted: false,
    releasedYear: 1980,
    isDubbed: true,
  ),
  Movie(
    title: 'Jurassic Park',
    imageUrl:
        'https://media.themoviedb.org/t/p/w440_and_h660_face/79ZYT0xRBzXN7DviSL2goTu49FZ.jpg',
    director: 'Steven Spielberg',
    genre: ['Action', 'Adventure', 'Sci-Fi'],
    score: 8.1,
    isRestricted: false,
    releasedYear: 1993,
    isDubbed: true,
  )
];
