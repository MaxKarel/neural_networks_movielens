# Movie recommendation

## Motivation

Recommendation for various domains, either commercial or non-profit, is topic with a lot of possible benefits. Machine learning is trying to find patterns in complex systems. This can be used for multiple useful topics from detecting health related issues from biometric data to detecting fraudulent transactions on bank accounts. And even though recommendation is not as noble as previous examples it certainly helps us navigate through evergrowing collections of data on internet and is of high interest mainly for the private sector, such as media companies.

Therefore we have decided to explore this topic with recommending movies to users. Even though its application and improvements for recommendation system are not world changing they certainly are good base for similar projects. Multinational companies have already organized various contests or challenges, for example Netflix, who made such challenges popular through their 1 milion dollar challenge to improve their recommendation systems back in 2006.

## Related Work

Cinematch was used by Netflix as a recommendation system since the beginning of the milenium, with newer user-made systems emerging every day which can be found on public repositories for use. MovieLens, from which we will use data, is also a recommendation system based on user ratings and movie tagging.

# NOTE REDO THIS IS JUST CPY PASTE
Commercial systems include Movix, which sources data from popular movie services IMDB and Movie DB for tags and descriptions. It also utilizes a customized neural network based on long short-term memory methods to offer film suggestions. Another popular system is taste.io. Taste uses several collaborative filtering algorithms based on what movies do users similar to you like. It factors in recency, serendipity, and rarity to help discover the not-so-obvious recommendations.

## Datasets

Since this is quite a popular topic there are multiple datasets from which we can train our Neural Network. We opted for one from MovieLens since it has large catalog of movies and user ratings. It can be found here: https://www.kaggle.com/grouplens/movielens-20m-dataset

There are other datasets suitable for this project. The most notable one is from Netflix, which was used in the abovementioned movie recommendation system competition. It can be found here:
https://www.kaggle.com/netflix-inc/netflix-prize-data

### Data Properties

* Size
  * Ratings: 20M
  * Movies: 27K
  * Users: 138K
  * Tags: 465K
* Structure
  * Empty Values: None
  * Data Types: Strings, Date and Integers

Data dont contain any personal identification of users since they are identified only by their ID.  

## High-Level Solution Proposal

We have identified two approaches to finding movies for users:

* Like minded users
* Similar tags

Initially we want to aim to recommend movies based on similarity between users. We would turn each user to a vector of ratings for individual movies. All users X all movies would give a large, yet sparse matrix, in which our neural network would attempt to find the similar most users to our user, for whom we want to fill out missing movie ratings. Movies for which our user lacks these ratings are considered as "not watched yet", so they will be filled out based on the similar users and ranked. The ones with the highest predicted rating are to be recommended. This is our main goal and target method to acheive it.

We would like to try out and experiment with a second approach as well and combine the results of the two methods. We can sum up the relevant tags for movies that our user has watched already and find which movies, that the user has not rated and therefor not watched yet, have the similar relevant tags. This would give us the same list as the method above, but with a different order. The combination of these two lists would be the final recommendation. We can experiment with the weight of each individual method when combining the results to get an optimal solution.