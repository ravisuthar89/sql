create database project;

use project;

select * from population_of_india;

-- 1. EXTRACT THE TOTAL POPULATION OF INDIA.
select sum(population) from population_of_india;

/* INSIGHTS :

Provides the information of total Population of the world. Gross value of the total world population with any categorizations

*/

-- 2. PROVIDE THE 5 HIGHEST POPULATED STATES IN INDIA.
select state, population, percent from population_of_india
order by population desc limit 5;

/* INSIGHTS :

Identifying the five highest populated states in India reveals regions with significant demographic concentrations. 
These states—Uttar Pradesh, Maharashtra, Bihar, West Bengal, and Madhya Pradesh—play a crucial role in the country's 
economic output, political influence, and resource demands. Their high populations create challenges in infrastructure, 
healthcare, and education, while also offering vast opportunities for workforce development and market expansion.
 Understanding population dynamics in these states is vital for effective governance, policy-making, and regional planning.
 
 */
 
-- 3. PROVIDE THE 5 LEAST POPULATED STATES WHICH AREA IS MORE THAN 2000 AND DENSITY IS LESS THAN 500 IN INDIA.
select state, population, percent, area, density_per_km2 from population_of_india
where area > 2000 and density_per_km2 < 500 
order by population limit 5;

/* INSIGHTS :

The five least populated states in India with an area greater than 2,000 sq km and a population density of less than 500 people per sq km 
highlight regions with sparse population distribution. These areas, often characterized by lower urbanization, may face unique challenges 
in economic development, infrastructure, and resource utilization, yet offer potential for sustainable growth. The insights derived 
from such data can guide regional planning, enhance resource management, and improve living conditions, ensuring a balanced approach to development
 across different geographic and demographic regions in the country.

*/
 
-- 4. EXTRACT THE POPULATION OF INDIA WHERE DIFFERENCE BETWEEN MALE AND FEMALE POPULATION IS MORE THAN AVERAGE.
select state, population, Difference_between_male_and_female, male, female, sex_ratio from population_of_india
where Difference_between_male_and_female > 
		(select avg(Difference_between_male_and_female) from population_of_india);
        
/* INSIGHTS :

Extracting the population of Indian states where the difference between male and female populations
exceeds the average highlights gender imbalances. States like Uttar Pradesh, Bihar, Rajasthan, Haryana, and Punjab 
often show significant gender disparities. This could be influenced by factors like cultural norms, migration patterns, 
and gender-specific policies, impacting regional development and social equity. Understanding these gaps aids in targeted 
interventions for improving gender equality and balanced growth.

*/

-- 5. EXTRACT THE POPUALTION OF STATES WHERE MALE ARE MORE THAN FEMALE.
select state, population, female, male from population_of_india
where male > female; 
        
/* INSIGHTS :

The states where the male population exceeds the female population reveal significant demographic trends and gender imbalances. 
States such as Haryana, Punjab, and Uttar Pradesh often report higher male-to-female ratios. These imbalances can result 
from cultural preferences, migration patterns, and socio-economic factors, influencing policies on gender equality and development initiatives.


*/

-- 6. PROVIDE THE HIGHEST SEX-RATIO STATES OF INDIA.
select state, population, sex_ratio from population_of_india
order by sex_ratio desc;
        
/* INSIGHTS :

India's highest sex-ratio states include Kerala, with a ratio of 1,084 females per 1,000 males, and Tamil Nadu, with 996 females. 
Other notable states are Punjab (895) and Haryana (879). These figures highlight gender disparities, emphasizing the need for 
targeted policies to improve women's status and health across regions.

*/

-- 7. PROVIDE THE POPULATION OF INDIA WHERE RURAL ARE MORE IN POPULATION IN COMPARE TO URBAN AND SHOW THE DIFFERENCE BETWEEN THEM.
select state, population, rural, urban, rural - urban as 'diff between rural and urban' from population_of_india
where rural > urban order by rural desc;

/* INSIGHTS :

India has a significant rural population, with states like Uttar Pradesh, Bihar, and Madhya Pradesh leading in rural demographics. 
In these states, rural areas often outnumber urban regions, contributing to about 69% of India’s total population. For instance, 
Uttar Pradesh's rural population exceeds 150 million, while its urban population is around 30 million. In Bihar, rural residents 
make up approximately 88% of the state’s population. The disparity highlights challenges such as limited access to healthcare, 
education, and employment opportunities in rural areas compared to urban centers. Addressing this gap is crucial for balanced 
national development and sustainable growth.

*/

-- 8. EXRACT THE STATES OF INDIA WHICH CONTAINS R AND T IN THEIR NAMES.
select * from population_of_india
where state like '%r%' and state like '%t%';

/* INSIGHTS :

The states of India containing 'R' and 'T' in their names are Andhra Pradesh, Maharashtra, and Uttar Pradesh. 
These states are significant for their diverse cultures, economic contributions, and geographic importance. 
They play vital roles in India's political landscape, with rich histories and substantial populations 
driving regional development and growth.

*/














