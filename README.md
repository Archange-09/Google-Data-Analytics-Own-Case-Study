#  Electric Vehicle Adoption Analysis  
**Google Data Analytics Professional Certificate – Capstone Project**

For a more comprehensive analysis: [PDF Link] (https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/Electric%20Vehicle%20Adoption%20Analysis.pdf)

## 📌 Overview
This project analyzes **electric vehicle (EV) adoption trends in Washington State** using public registration data.  
The objective is to generate **data-driven insights** that can support transportation planning, charging infrastructure development, and sustainability initiatives.

**Role:** Junior Data Analyst (Business Intelligence Consultant)  
**Tools:** SQL (BigQuery), R (tidyverse, ggplot2), Flexdashboard  
**Data Source:** Washington State EV Population Data

---

## ❓ Business Questions
1. What types of electric vehicles are most commonly registered (BEV vs PHEV)?
2. How does EV adoption vary by geographic location?
3. How have electric vehicle characteristics (e.g., electric range) changed over time?
4. Which manufacturers dominate EV registrations?
5. How can these trends inform future infrastructure planning?

---

## 📊 Data Source
- **Dataset:** Electric Vehicle Population Data (Washington State)
- **Provider:** State of Washington via Data.gov
- **Download Date:** December 29, 2025
- **Format:** CSV  
- **Link:** https://catalog.data.gov/dataset/electric-vehicle-population-data

### Data Quality (ROCCC)
- **Reliable:** Official government records  
- **Original:** Directly sourced from state licensing data  
- **Comprehensive:** Includes vehicle, geographic, and technical attributes  
- **Current:** Updated monthly  
- **Cited:** Publicly accessible via Data.gov  

---

## 🛠 Data Preparation & Processing

### Cleaning Steps
- Standardized column names to **snake_case**
- Filtered records to **Washington State only**
- Restricted vehicle types to:
  - Battery Electric Vehicle (BEV)
  - Plug-in Hybrid Electric Vehicle (PHEV)
- Removed records with missing key fields (county, model year, make, EV type)
- Deduplicated vehicles using partial VIN (`vin_1_10`)

### Feature Selection
**Included Columns:**
- `vin_1_10`
- `county`
- `state`
- `model_year`
- `make`
- `ev_type`
- `electric_range`

**Excluded Columns:**  
Legislative district, electric utility, census tract, full VINs  
> These fields were not required for regional or manufacturer-level analysis.

---

## 📈 Analysis Summary

### Vehicle Type Distribution
  ![EV Distribution](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/EV%20Distribution%20Chart.png)
- **Battery Electric Vehicles (BEVs)** dominate registrations in Washington
- BEVs outnumber PHEVs by nearly **2:1**
- Vehicles with zero reported range were included in counts but excluded from range trend analysis

---

### Geographic Adoption
EV adoption is highly concentrated in a small number of counties:
  ![Top 10 Counties](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/Top%2010%20Counties%20Chart.png)
- **King County** – largest EV population and charging infrastructure
- **Clark County** – strong commuter-driven growth
- **Benton County** – strategic corridor location in Eastern Washington

These trends align with state infrastructure plans and utility electrification initiatives:
- WSDOT EV Infrastructure Plan: https://wsdot.wa.gov/sites/default/files/2022-08/Electricvehicle-plan-infastructuredeployment.pdf
- Washington EV Registration Trends: https://wsdot.wa.gov/about/data/gray-notebook/gnbhome/environment/electricvehicles/electricvehicles.htm
- Clark Public Utilities Electrification Plan: https://www.clarkpublicutilities.com/wp-content/uploads/2024/01/2024-Transportation-Electrification-Plan-Update.pdf

---

### Evolution of Electric Range
  ![BEV range](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/BEV%20Range%20Chart.png)
- BEV electric ranges have increased significantly over time
  ![Tesla range](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/Tesla%20Range%20Chart.png)
- Tesla models drive much of the observed range growth
- A temporary dip in Tesla’s average range reflects the introduction of more affordable models (e.g., Model 3)
  ![PHEV electric motor range](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/PHEV%20Electric%20Motor%20Range%20Chart.png)
- PHEVs show gradual improvements but maintain lower electric-only ranges by design

**Data Handling Note:**  
A Wheego vehicle record reporting a 100-mile electric range under the PHEV category was excluded from PHEV range analysis. External sources identify Wheego vehicles as BEVs, and retaining the record would inflate PHEV range estimates without materially impacting overall trends.

---

### Manufacturer Trends
  ![Top manufacturers](https://github.com/Archange-09/Google-Data-Analytics-Own-Case-Study/blob/main/Top%20Manufacturers%20Chart.png)
- **BEV Market Leader:** Tesla (over 50% of BEV registrations)
- **PHEV Market Leader:** Volvo
- Consumer preferences differ significantly between BEV and PHEV technologies

---

## 📤 Deliverables
- Cleaned and deduplicated EV dataset
- SQL queries for data processing
- R scripts for analysis and visualization
- Interactive Flexdashboard summarizing:
  - EV type distribution
  - County-level adoption
  - Manufacturer dominance
  - Electric range trends

---

## 🚀 Recommendations
1. **Expand DC Fast Charging Infrastructure**
   - Prioritize Level 3 fast chargers
   - Support both NACS (Tesla) and CCS standards

2. **Target High-Impact Regions**
   - Maintain dense charging networks in King and Clark counties
   - Increase corridor-based charging in Benton County

3. **Plan for Future Growth**
   - Balance urban density with highway corridor coverage
   - Prepare for continued increases in EV range and adoption volume

---

## 🔗 References
- Washington State EV Population Data: https://catalog.data.gov/dataset/electric-vehicle-population-data  
- WSDOT EV Infrastructure Plan (2022): https://wsdot.wa.gov/sites/default/files/2022-08/Electricvehicle-plan-infastructuredeployment.pdf  
- Washington EV Registrations (Gray Notebook): https://wsdot.wa.gov/about/data/gray-notebook/gnbhome/environment/electricvehicles/electricvehicles.htm  
- Clark Public Utilities Electrification Plan (2024): https://www.clarkpublicutilities.com/wp-content/uploads/2024/01/2024-Transportation-Electrification-Plan-Update.pdf  
- Ford Ranger EV (Historical context): https://en.wikipedia.org/wiki/Ford_Ranger_EV  

---

## 👤 Author
**Sean Russel Remonte**  
Google Data Analytics Professional Certificate
