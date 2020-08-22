
# An Analysis of the Socioeconomic Impact on the NYC Restaurant Industry Post COVID-19. 
#### **Purpose:**
Analyze the effects of COVID-19 on NYC restaurants in high, medium, and low income neighborhoods. 

#### **Hypothesis:**
Lower income neighborhoods will perform better than higher income neighborhoods in surviving the pandemic because higher income restaurants rely on office workers; whereas lower income restaurants rely on foot traffic, delivery, and takeout services. 

#### **Major Finding**
Restaurants in the lower income zipcodes were hit the hardests with lowest reopening applications and lowest loans received. 

#### **Data Visual Summary/ Dashboard**
1. In the MAIN_NOTEBOOK.ipynb file the last line of actual code is tabs.servable(). This is the servable function through panel. This function will allow one to serve the dashboard to the web.
2. One can then see a live version of the dashboard through his/her own computer as a local host by going to the folder that the respository is in and running code in the terminal.
3. - Pull the repository or at least the CSV data and MAIN_NOTEBOOK.ipynb file.
   - Access the folder where all of this information has been pulled to via your command line.
   - Run: panel serve MAIN_NOTEBOOK.ipynb --log-level debug --show
   - Enjoy!
 

-----------------------------------------------------------
### **Metrics Needed**
In order to compare the effects of COVID-19 among the different socioeconomic neighborhoods of NYC we used the following metrics: 
1. A clear definition of various socioeconomic areas which we called High, Low, and Medium income neighborhoods.
2. Datasets listing active restaurants in NYC prior to the COVID-19 shutdown and a list of post COVID openings in our pre-defined socioeconomic zones. 
3. Government assistance/loans received in each of the neighborhoods, correlating with re-openings. This would reveal the strength of recovery for each neighborhood. 

## **Methods Applied** 
Exploring our inquiry, we applied the following methods: 
1. **Dividing NYC neighborhoods into high, medium, and low income.** We began our data exploration with the NYC Department of Health listings of all NYC neighborhood zipcodes. We then cross referenced these zipcodes with our IRS tax return data. We then picked three different income levels based on the 2017 IRS data. After, we divided aggregate income declared in each IRS tax return filing per NYC zipcode by aggregated number of returns filed in each zipcode. The result showed the average declared income per return or per household. The top 10 highest household income zipcodes were grouped under 'high income', the top 10 zipcodes with lowest household incomes were categorized as 'low income', and the top ten zipcodes with household income between $80000 and $101000 were picked as medium income (in the judgement of our group regarding medium income in NYC). 
  - **Major Findings:** 
    - **A.** The disparity between the highest income zip code 10007 (Tribeca with a household income of 693K) and the lowest, 10453 (Morris heights South West Bronx with 27K income) was significant. 
    -  **B.** The top ten highest income zip codes were all in the borough of Manhattan, 9 out of 10 lowest income zicpcodes were in Bronx. Medium income zipcodes were scattered among all five boroughs of NYC.
2. **Datasets listing active restaurants.** NYC open data was our source for collecting the list of active restaurants. We obtained the dataset from the NYC Department of Health inspections and joined it with our list of 30 selected zipcodes. We deduped the list and obtained the number of active restaurants per neighborhoods Pre-Covid. We then used the list of Phase 2 re-opening applications from each neighborhood to obtain the number of restaurants ready to reopen in our selected neighborhoods.
  - **Major Findings:** 
    - **A.** There were 36000 restaurants in all five boroughs of NYC Pre COVID.
    - **B.** In our selected neighborhoods there were 6486 active restaurants Pre-Covid. The distribution was as follows: 
        - High Income: 3377
        - Medium Income: 1772
        - Low Income: 1337
        
        ![Pre Covid by Income Level Our Zips](bokeh_plot-19.png)
        ![Pre Covid by Borough Our Zips](bokeh_plot-20.png)
        ![Map of Pre Covid](nathalie_pre_covid_map.png)
    - **C.** In our selected neighborhoods there were a total of 1893 restaurants that applied for reopening. The distribution was as follows: 
        - High Income: 1092
        - Medium Income: 646
        - Low Income: 155
        
        ![Post Covid By Income Level Our Zips](bokeh_plot-13.png)
        ![Post Covid By Borough Our Zips](bokeh_plot-12.png)
        ![Map of Post Covid](chart_for_nathalie.png)



3. **What were the number of loans and aggregate amounts received by restaurants in the neighborhoods of each income level?**
The total loan amount (per selected zip codes) in the High income group is $34 million and the number of loans received is 589. In that area there were 3377 opened restaurants and on average only 17 percent received funding. For the Medium income group the loan amount was $19 million and the number of received loans is 448, which means 25 percent of restaurants in that group received funding. The Low income group received $6 million in funding with 262 or 19 percent of restaurants receiving loans.

![Funding Pie Graphs](junaid_7.png)

  - **Mean loan amount received from small business administration (SBA) per income zone in dollars:**
 
    - High Income - Mean: $59,194 Total: $34,865,671
    ![High Mean Loan Amounts](bokeh_plot-14.png)
    - Medium Income - Mean: $43,050 Total: $19,286,695
    ![Medium Mean Loan Amounts](junaid_2.png)
    - Low Income - Mean: $24,841 Total: $6,508,562
    ![Low Mean Loan Amounts](junaid_1.png)
4. **Are there any correlations between number of loans received by neighborhoods and reopening applications filed by restaurants?**
Lower income neighborhoods received a lower amount of SBA loans on average. Lower income neighborhoods also had the lowest number of reopening applications among all neighborhoods. However, looking at percentages of loans from all three income levels, Low and High income received a comparable amount of loans for their respective zip codes.
  
  ### **Sources Utilized**
1. [NYC Open Data for listings of all active restaurants and re-opening applications.](https://opendata.cityofnewyork.us/)
2. [IRS 2017 tax return data.](https://www.irs.gov/statistics/soi-tax-stats-individual-income-tax-statistics-2017-zip-code-data-soi)
3. [NYC Department of Health listings of all NYC zipcodes.](https://www.health.ny.gov/statistics/cancer/registry/appendix/neighborhoods.htm)
4. [Eateries in the New York City Department of Parks & Recreation properties including snack bars, food carts, mobile food trucks, and restaurants.](https://data.cityofnewyork.us/Recreation/Directory-of-Eateries/8792-ebcp)
5. [NYC Open Restaurant Applications](https://data.cityofnewyork.us/Transportation/Open-Restaurant-Applications/pitm-atqc/data)
6. [COVID: US Workforce Population by Industries and Company Segments](https://aws.amazon.com/marketplace/pp/prodview-3yow3g2ymr7pe?qid=1596893861758&sr=0-25&ref_=srh_res_product_title#overview)
7. [US Federal Tax Liens - Business Entities - 2018](https://aws.amazon.com/marketplace/pp/prodview-u5kbll3f6i43m?qid=1596893861758&sr=0-27&ref_=srh_res_product_title#overview)
8. [SBA Paycheck Protection Program (PPP) Loan Data for the restaurants in NY State](https://www.kaggle.com/govtrades/sba-paycheck-protection-program-loan-data/notebooks)
