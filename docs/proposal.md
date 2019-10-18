# Movie recommendation

## Motivation

Recommendation for various domains, either commercial or non-profit, is topic with a lot possible benefits. Machine learning is trying to find patterns in complex systems. This can be used for multiple useful topics from detecting health related issues from biometric data to detecting fraudulent transactions on bank accounts. And even thou recommendation is not as noble as previous examples it certainly helps us navigate through evergrowing collections of data on internet.

Therefore we have decided to explore this topic with recommending movies to the users. Even though its application and improvements for recommendation system are not world changing they certainly are good base for similar projects.

## Related Work

## Datasets

Since this is quite popular topic there are multiple datasets from which we can train our Neural Network. We opted for one from MovieLens since it has large catalog of movies and user ratings.
It can be found here: https://www.kaggle.com/grouplens/movielens-20m-dataset

There are other datasets suitable for this project. The most notable one is from Netflix, which was used in movie recommendation system competition.

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
* Popular now
