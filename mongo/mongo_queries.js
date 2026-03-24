// Year with most movies
db.movies.aggregate([
  { $group: { _id: "$year", count: { $sum: 1 } } },
  { $sort: { count: -1 } },
  { $limit: 1 }
]);

// Movies after 1999
db.movies.countDocuments({ year: { $gt: 1999 } });

// Average votes in 2007
db.movies.aggregate([
  { $match: { year: 2007 } },
  { $group: { _id: null, averageVotes: { $avg: "$Votes" } } }
]);
