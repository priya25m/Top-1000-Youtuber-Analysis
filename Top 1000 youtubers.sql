-- overall view of top 1000 youtubers dataset

SELECT
COUNT(DISTINCT Country) AS Total_countries,
COUNT(DISTINCT Categories) AS Total_categories,
AVG(Suscribers) AS avg_subscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]


-- Top categories
SELECT
Categories,
COUNT(Username) AS Total_channels
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Categories
ORDER BY Total_channels DESC


--Geographical analysis

SELECT
Country,
COUNT(Username) AS Total_Channels
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Country
ORDER BY Total_Channels DESC


--Subscriber analysis
SELECT TOP 10
Username,
AVG(Suscribers) AS avg_subscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Username
ORDER BY avg_subscribers


-- Top performance identification

SELECT TOP 10
Username,
Suscribers,
Country
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
ORDER BY Suscribers DESC


-- Content and channel recommendation

SELECT 
Categories,
AVG(Suscribers) AS avg_subscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Categories
ORDER BY avg_subscribers DESC


-- Cross-country subscriber engagement

SELECT TOP 10
Country,
AVG(Suscribers) AS avg_subscribers,
AVG(Visits) AS avg_visits,
AVG(Likes) AS avg_likes,
AVG(Comments) AS avg_comments
FROM dbo.[Clean_Top_1000_Youtube_df - youtubers_df]
GROUP BY Country
ORDER BY avg_subscribers DESC




