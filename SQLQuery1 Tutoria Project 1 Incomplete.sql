SELECT * 
FROM CovidDeaths
ORDER BY 3,4;

--SELECT * 
--FROM CovidVaccinations
--ORDER BY 3,4;

-- Select Data that we are going to be working with

SELECT location, date, total_cases, new_cases, total_deaths
FROM PortfolioProjects..CovidDeaths
ORDER BY 1,2;

-- Looking at the Total Cases vs Total Deaths

SELECT location, date, total_cases, new_cases, total_deaths, (total_deaths/total_cases)*100 AS DeathPercentage
FROM PortfolioProjects..CovidDeaths
WHERE location LIKE '%states%'
ORDER BY 1,2;
