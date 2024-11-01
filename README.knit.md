---
output: github_document
---

# FishMIP2.0: Evaluation, Detection, and Attribution Protocol

### [Contents]{.underline}

[Goal [2]](#goal)

[Experiments & Scenarios [3]](#experiments-scenarios)

[Input data [6]](#input-data)

[Climate forcing [6]](#climate-forcing)

[Fishing effort forcing [11]](#fishing-effort-forcing)

[Output data [14]](#output-data)

[Additional notes for Regional FishMIP Models [16]](#additional-notes-for-regional-fishmip-models)

[Reporting model results [16]](#reporting-model-results)

## Goal {#goal}

The goal of this FishMIP2.0 protocol is to determine how well FishMIP marine ecosystem models can detect observed past changes in marine ecosystems and fisheries under realistic historical climate and fishing forcing (Blanchard et al. 2024). We will do this by evaluating marine ecosystem model simulations against observational data (Rynne et al. 2024). Provided the models can detect observed changes adequately, we then aim to gain a better understanding of the primary causes of these changes through sensitivity experiments (attribution).

This information will allow FishMIP to better target policy initiatives such as IPCC and IPBES by providing more robust uncertainty assessment, as well as advancing the state of FishMIP models for informing vulnerability, impact, and adaptation plans of coastal sea ecosystems and fisheries (requested by the FAO). It will also help move towards a detection and attribution framework.

The focus of studies produced from this simulation round will be a significant advance in at least two ways:

1.  forcing models with higher spatial resolution of global climate models and reconstructed historical fishing effort and

2.  assessment of models against reconstructed historical catches (as well as biomass and other fisheries and ecological metrics in regions where additional data are available).

This protocol is designed to contribute directly to the ISIMIP 3a Simulation Round on "Evaluation, Detection and Attribution".

| **Revised target date for uploading simulation outputs: Nov 30th, 2024**
| 
| Uploading simulations by this date is essential to ensure enough time for analysis and writing of manuscripts in time for submission to the Special Issue. If you are able to upload results sooner, that would be helpful. If you need more time, please let us know as soon as possible.

Progress towards this deadline will be supported and facilitated through online global and regional modeller workshops to:

-   Ensure correct ESM model inputs and access

-   Ensure fishing drivers work (separate global and regional breakaway groups)

-   Tool sharing & troubleshooting

-   Check model outputs/issues

In this document we describe the general experimental and scenario set-up (Section 3). Further down in Section 4 we include the details of the specific **input** variables that modellers can use to implement scenarios. In Section 5 we describe the set of **outputs** to be created. Finally in Sections 6-7 we provide further **notes** and **instructions** on how to report and upload model results.

Further information on this protocol can be found here:

[https://protocol.isimip.org/#ISIMIP3a/marine-fishery_regional/marine-fishery_global](https://protect-au.mimecast.com/s/G8B1C81Zm7f6W1w8LSYVHlL?domain=protocol.isimip.org)

**For this simulation round, we are asking you to run and upload 2 core runs, 2 optional (but preferred) detection and attribution runs, and 2 optional (but helpful) sensitivity test runs, described below.**

## Experiments & Scenarios {#experiments-scenarios}

Each model experiment is a set of model simulations that has a particular goal (e.g. model evaluation). A scenario is a particular setting for forcing drivers that describes how each model run should be set up in the experiment, including both the type of climate forcing (CF) and the type of direct human forcing (DHF), in particular fishing.

**The model runs that we are requesting for this simulation round are listed below. Please prioritize the core runs below, and provide the 'optional' if possible.**

##### Table 1: Experiment set-up. Each experiment is specified by the climate forcing (CF) and Direct Human Forcing (DHF).

+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
| Experiment                      | Scenario description                                                                                                                                               | Scenario specifier | Sensitivity specifier            |
+=================================+====================================================================================================================================================================+====================+==================================+
| **Model evaluation**            | 1.Climate, river inputs, fishing -- high res                                                                                                                       | **obsclim**        | **default**                      |
|                                 |                                                                                                                                                                    |                    |                                  |
| 2 core runs                     | -   **CF:** Climate variability constrained by reanalysis atmospheric forcing (GFDL-COBALT2 forced by JRA-55 and river inputs) using **0.25 degree grid**          | **histsoc**        |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** Varying direct human influences according to observed reconstructed fishing effort time series (histsoc).                                             |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
|                                 | 2.Climate, river inputs, no fishing -- high res                                                                                                                    | **obsclim**        | **default**                      |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **CF:**  same as above using **0.25 degree grid**                                                                                                              | **nat**            |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** without any fishing activity (nat)                                                                                                                    |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
| **Riverine influx sensitivity** | 3.Climate, no river input forcing, fishing -- high res                                                                                                             | **obsclim**        | **1955-riverine-input**          |
|                                 |                                                                                                                                                                    |                    |                                  |
| 2 optional (but preferred) runs | -   **CF:** Climate variability constrained by reanalysis atmospheric forcing (GFDL-COBALT2 "*control run*" only forced by JRA-55) using **0.25 degree grid**      | **histsoc**        |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** Varying direct human influences according to observed reconstructed fishing effort time series (histsoc).                                             |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
|                                 | 4.Climate, no river input forcing, no fishing -- high res                                                                                                          | **obsclim**        | **1955-riverine-input**          |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **CF:**  same as above using **0.25 degree grid**                                                                                                              | **nat**            |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** without any fishing activity (nat)                                                                                                                    |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
| **Resolution sensitivity test** | 5.Climate, river input forcing, fishing -- low res                                                                                                                 | **obsclim**        | **60arcmin**                     |
|                                 |                                                                                                                                                                    |                    |                                  |
| 2 optional (but helpful )runs   | -   **CF:** Climate variability constrained by reanalysis atmospheric forcing (GFDL-COBALT2 forced by JRA-55 and river inputs **obsclim**) using **1 degree grid** | **histsoc**        |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** Varying direct human influences according to observed reconstructed fishing effort time series (histsoc).                                             |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
|                                 | 6.Climate, river input forcing, no fishing -- low res                                                                                                              | **obsclim**        | **60arcmin**                     |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **CF**:  same as above using **1 degree grid**                                                                                                                 | **nat**            |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** without any fishing activity (nat)                                                                                                                    |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
| **Control sensitivity test**    | 7.Climate, no river input forcing, fishing -- low res                                                                                                              | **obsclim**        | **1955-riverine-input+60arcmin** |
|                                 |                                                                                                                                                                    |                    |                                  |
| 2 optional runs                 | -   **CF:** Climate variability constrained by reanalysis atmospheric forcing (GFDL-COBALT2 forced by JRA-55 and river inputs **obsclim**) using **1 degree grid** | **histsoc**        |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** Varying direct human influences according to observed reconstructed fishing effort time series (histsoc).                                             |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+
|                                 | 8.Climate, no river input forcing, no fishing -- low res                                                                                                           | **obsclim**        | **1955-riverine-input+60arcmin** |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **CF**:  same as above using **1 degree grid**                                                                                                                 | **nat**            |                                  |
|                                 |                                                                                                                                                                    |                    |                                  |
|                                 | -   **DHF:** without any fishing activity (nat)                                                                                                                    |                    |                                  |
+---------------------------------+--------------------------------------------------------------------------------------------------------------------------------------------------------------------+--------------------+----------------------------------+

#### Note on spin-up and transition period (1841-1960), and historical (experiment) period 1961-2010

| The focal historical period for this model evaluation experiment spans 1961-2010. To capture the transition from a pre-industrial spin-up to 1961 we also provide input for a gradual increase in fishing and environmental variability for the pre-industrial period to 1961.
| 
| For fishing effort prior to 1961, we provide input for a nominal spin-up (1841-1860, fishing held constant at 1861 levels) and pre-industrial transition period (1861-1960, reconstructed fishing effort).
| 
| To set-up climate-forcing variables for the entire 1841-1960 period, we ask modellers to use the "control run" (ctrlclim) monthly output for the years 1961-1980 (inclusive) on repeat for six cycles. These years have been selected because they correspond with an entire ENSO cycle and because no climate trend is detectable prior to 1980 from the GFDL model.
| 
| For models that require longer spin-up prior to 1841, please keep 1841 levels of fishing effort constant and, if needed, repeat the ENSO cycle (e.g. monthly values for 1961-1980 inclusive from ctrlclim) for as many times necessary.
| 
| For the 'no fishing' runs (nat), the spin-up and pre-industrial transition should not use any fishing effort.
| 
| We ask modellers to include all outputs from 1841 onwards for use in our evaluation assessment of model drift. Each output should be saved as two files, the first covering the spin-up and transition period (1841-1960) and the second covering the historical (experiment) period (1961-2010).

#### Scenario definitions

| Throughout the protocol we use 'specifiers' that are shortened names used to denote a particular scenario, variables, or other parameter in the filenames of model inputs and outputs. It is crucial that you also use the same specifiers in your output files.
| 
| **Correct formatting and naming of output files are essential for model intercomparison and analysis.**
| 
| Tables 2-4 describe the different scenarios for the model runs described in Table 1. These specifiers are used in the file names of the corresponding input files and should also be used for the names of the output files (see  [7](https://protocol.isimip.org/#reporting-model-results). Reporting model results).

##### Table 2: Climate scenario specifiers (climate-scenario).

| **Scenario specifier** | **Description**                                                                                                                     |
|:-----------------------|:------------------------------------------------------------------------------------------------------------------------------------|
| **obsclim**            | Climate with observed atmospheric forcing and river input forcing used for model evaluation and the detection and attribution task. |

##### Table 3: Socio-economic scenario specifiers (soc-scenario).

| **Scenario specifier** | **Description**                                                                |
|:-----------------------|:-------------------------------------------------------------------------------|
| **histsoc**            | Varying direct human influences (i.e. historical estimates of fishing effort). |
| **nat**                | No fishing (naturalized run).                                                  |

##### Table 4: Sensitivity scenario specifiers (sens-scenario).

| **Scenario specifier**           | **Description**                                                                                               |
|:---------------------------------|:--------------------------------------------------------------------------------------------------------------|
| **default**                      | 0.25 degree resolution climate model inputs.                                                                  |
| **1955-riverine-input**.         | No temporal (land-use change) dynamics influencing river influx.                                              |
| **60arcmin**                     | 1 degree resolution climate model inputs.                                                                     |
| **1955-riverine-input+60arcmin** | No temporal (land-use change) dynamics influencing river influx and 1 degree resolution climate model inputs. |

**Please remember to use these same specifiers in your output files. More on reporting data can be found at the end of this document.**

## Input data {#input-data}

**For modellers new to FishMIP:** to access all input data you first need to set up an account with ISIMIP to access the DKRZ server. Please follow the instructions here: <https://www.isimip.org/dashboard/accessing-isimip-data-dkrz-server/>

### Climate forcing {#climate-forcing}

##### Table 5: Climate forcing

| Title             | Specifiers                                                 | Time period | Reanalysis | Bias adjustment target | Comments                                                                                                                                                                                                                             | Priority |
|:------------------|:-----------------------------------------------------------|:------------|:-----------|:-----------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------|
| GFDL-MOM6-COBALT2 | **gfdl-mom6-cobalt2_obsclim**\_\<variable\>\_**15arcmin**  | 1961-2010   | JRA55      | none                   | River input and JRA-55 driven MOM6-COBALT2 reanalysis. Data on native grid was remapped to a regular **0.25° grid**. For further experiment design details see <https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2021GL094367>    | 1        |
| GFDL-MOM6-COBALT2 | **gfdl-mom6-cobalt2_ctrlclim**\_\<variable\>\_**15arcmin** | 1961-2010   | JRA55      | none                   | JRA-55 only driven MOM6-COBALT2 reanalysis (control run). Data on native grid was remapped to a regular **0.25° grid**. For further experiment design details see <https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2021GL094367> | 2        |
| GFDL-MOM6-COBALT2 | **gfdl-mom6-cobalt2_obsclim**\_\<variable\>\_**60arcmin**  | 1961-2010   | JRA55      | none                   | River input and JRA-55 driven MOM6-COBALT2 reanalysis. Data on native grid was remapped to a regular **1° grid**. For further experiment design details see <https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2021GL094367>       | 3        |
| GFDL-MOM6-COBALT2 | **gfdl-mom6-cobalt2_ctrlclim**\_\<variable\>\_**60arcmin** | 1961-2010   | JRA55      | none                   | JRA-55 only driven MOM6-COBALT2 reanalysis (control run). Data on native grid was remapped to a regular **1° grid**. For further experiment design details see <https://agupubs.onlinelibrary.wiley.com/doi/10.1029/2021GL094367>    | 4        |

##### Table 6. Climate forcing variables and units for FishMIP 3a simulations. All variables are available on a 0.25 and 1 degree horizontal grid, monthly and annual resolutions. Note: Some variables are available as specific layers extracted from vertically resolved data. Their variable names have been suffixed with -bot (ocean bottom, e.g. o2-bot), -surf (surface values, e.g. pH-surf) or -vint (vertically integrated, e.g. phyc-vint), respectively, or prefixed with int (vertically integrated, e.g. intpp). Temperature is suffixed with b or s for bottom (e.g. tob) or surface (e.g. tos) layers, respectively.

+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Variable                                                                 | Specifier        | Unit        | Resolution      | Datasets                                          |
+==========================================================================+==================+=============+=================+===================================================+
| Mass Concentration of Total Phytoplankton Expressed as Chlorophyll       | **chl**          | kg m-3      | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Floor Depth                                                          | **deptho**       | m           | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Downward Flux of Particulate Organic Carbon                              | **expc-bot**     | mol m-2 s-1 | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Particulate Organic Carbon Content                                       | **intpoc**       | kg m-2      | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Primary Organic Carbon Production by All Types of Phytoplankton          | **intpp**        | mol m-2 s-1 | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Net Primary Organic Carbon Production by Diatoms                         | **intppdiat**    | mol m-2 s-1 | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Net Primary Mole Productivity of Carbon by Diazotrophs                   | **intppdiaz**    | mol m-2 s-1 | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Net Primary Mole Productivity of Carbon by Picophytoplankton             | **intpppico**    | mol m-2 s-1 | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Maximum Ocean Mixed Layer Thickness Defined by Sigma T                   | **mlotst-0125**  | m           | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Dissolved Oxygen Concentration                                           | **o2,**          | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **o2-bot**       | mol m-2     |                 |                                                   |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **o2-surf**      | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| pH                                                                       | **ph**           | 1           | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **ph-bot**       | 1           |                 |                                                   |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **ph-surf**      | 1           |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Phytoplankton Carbon Concentration                                       | **phyc**         | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **phyc-vint**    | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Mole Concentration of Diatoms expressed as Carbon in sea water           | **phydiat**      | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **phydiat-vint** | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Mole Concentration of Diazotrophs Expressed as Carbon in Sea Water       | **phydiaz**      | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **phydiaz-vint** | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Mole Concentration of Picophytoplankton Expressed as Carbon in Sea Water | **phypico**      | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **phypico-vint** | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Water Salinity                                                       | **so**           | ‰           | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **so-bot**       | ‰           |                 |                                                   |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **so-surf**      | \%          |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Water Potential Temperature                                          | **thetao**       | °C          | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Ocean Model Cell Thickness                                               | **thkcello**     | m           | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Water Potential Temperature at Sea Floor                             | **tob**          | °C          | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Surface Temperature                                                  | **tos**          | °C          | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Water X Velocity                                                     | **uo**           | m s-1       | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Water Y Velocity                                                     | **vo**           | m s-1       | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Mole Concentration of Mesozooplankton expressed as Carbon in sea water   | **zmeso**        | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **zmeso-vint**   | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Mole Concentration of Microzooplankton expressed as Carbon in sea water  | **zmicro**       | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **zmicro-vint**  | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Zooplankton Carbon Concentration                                         | **zooc**         | mol m-3     | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
|                                                                          |                  |             |                 |                                                   |
|                                                                          | **zooc-vint**    | mol m-2     |                 |                                                   |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Net Downward Shortwave Radiation at Sea Water Surface                    | **rsntds**       | W m-2       | 0.25° , 1° grid | GFDL-MOM6-COBALT2                                 |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+
| Sea Ice Area Fraction                                                    | **siconc**       | \%          | 0.25° , 1° grid | Remapped from global JRA-55 re-analysis ice cover |
+--------------------------------------------------------------------------+------------------+-------------+-----------------+---------------------------------------------------+

### Climate forcing file locations

The monthly climate forcing files for obsclim (60arcmin and 15arcmin) of this simulation protocol can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/obsclim/global/monthly/historical/GFDL-MOM6-COBALT2/
```

The monthly climate forcing files for climate forcing for spin-up and control runs (ctrlclim: onedeg and 15arcmin) of this simulation protocol can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/ctrlclim/global/monthly/historical/GFDL-MOM6-COBALT2
```

The variables **deptho** and **thkcello** are fixed through time and can be found in the "fixed/" folder (rather than monthly/).

#### Note on phytoplankton size structure inputs

Production and carbon data for large and small phytoplankton can be derived from the variables in Table 1 by the following:

large = diatoms + diazotrophs

small = picophytoplankton

The GFDL model treats diazotrophs as large phytoplankton as part of their food-web processes.

#### Note on regional model spatial extractions

For regional models, only specific grid cells will be needed from the above global outputs. Please let us know if you require assistance to extract results (e.g. using bounding boxes, masks or shapefiles). This functionality is now partially available (bounding box) through the ISIMIP web-based [data portal](https://data.isimip.org/).

A simple worked example on how to do this for specific regions in R is provided here: <https://github.com/Fish-MIP/FishMIP_extracting-data>

### Fishing effort forcing {#fishing-effort-forcing}

##### Table 7: Fishing effort forcing files and variables for FishMIP 3a simulations.

+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| Dataset                                 | Included variables (short names)                                                                                                      | Time period/Resolution | Reference/Source and Comments                                                               |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| File name                               | `socioeconomic/fishing/histsoc/effort_isimip3a_histsoc_1841_2010.csv`\| \|                                                            |                        |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| Spatially aggregated fishing effort     | -   eez_country_name = The exclusive economic zone/high seas name in which fishing effort is occurring                                | -   1841-2010          | Sources: Rousseau et al., 2019, PNAS 116 (25) 12238-12243 and Rousseau et al. 2022 in prep. |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   LME = A number code of the Large Marine ecosystem in which the Effort is occurring                                                | -   Annual             |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   SAUP = A number code for the fishing country, following Sea Around Us numbering                                                   |                        |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   Gear = the fishing gear                                                                                                           |                        |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   FGroup = the targeted functional group                                                                                            |                        |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   Sector = the fishing sector defined by the law of the country                                                                     |                        |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   NomActive = Nominal fishing effort of the active fleet                                                                            |                        |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         | -   Phase = either "spin-up" or "experiment"                                                                                          |                        |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| File name                               | `socioeconomic/fishing/histsoc/effort-industrial-gridded_isimip3a_histsoc_1961_2010.csv` \| \|                                        |                        |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| Gridded total industrial fishing effort | -   NomActive = Total nominal active fishing effort for the industrial sector summed across functional groups, gear, fishing country. | -   0.5                | Rousseau et al. 2022 in prep.                                                               |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         |                                                                                                                                       | -   1841-2010          |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         |                                                                                                                                       | -   Annual             |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| File name                               | `socioeconomic/fishing/histsoc/effort-artisanal-gridded_isimip3a_histsoc_1961_2010.csv` \| \|                                         |                        |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+
| Gridded total artisanal fishing effort  | -   NomActive = Total nominal active fishing effort for the artisanal sector summed across functional groups, gear, fishing country.  | -   0.5                | Rousseau et al. 2022 in prep.                                                               |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         |                                                                                                                                       | -   1841-2010          |                                                                                             |   |
|                                         |                                                                                                                                       |                        |                                                                                             |   |
|                                         |                                                                                                                                       | -   Annual             |                                                                                             |   |
+-----------------------------------------+---------------------------------------------------------------------------------------------------------------------------------------+------------------------+---------------------------------------------------------------------------------------------+---+

##### Table 8: Metadata for fishing effort variables.

| Variable Name    | Long name                                                                                | Unit             | Description/notes                                                                                                                                                                                                                                                                                          |
|:-----------------|:-----------------------------------------------------------------------------------------|:-----------------|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Year             | (End of the) year when the fishing effort is occurring                                   | Number code      |                                                                                                                                                                                                                                                                                                            |
| Sector           | The fishing sector defined by the law of the country                                     | Name code        | I = Industrial and A = artisanal, where artisanal include powered and unpowered artisanal fleets                                                                                                                                                                                                           |
| LME              | Large Marine Ecosystem Number                                                            | Number code      | A number code of the Large Marine ecosystem in which the Effort is occurring                                                                                                                                                                                                                               |
| eez_country_name | Exclusive Economic Zone                                                                  | Name code        | The country-level exclusive economic zone (or high seas) name in which fishing effort is occurring                                                                                                                                                                                                         |
| SAUP             | A number code for the fishing country, following Sea Around Us numbering                 | Number code      | Ex supranational entities (USSR, Yugoslavia) are disaggregated to their constituent countries. Serbian Fishing Effort included with Montenegro. Crimea included with Ukraine. \|                                                                                                                           |
| Gear             | The fishing gear                                                                         | Name code        | Gear names                                                                                                                                                                                                                                                                                                 |
| FGroup           | The targeted functional group                                                            | Name code        | Functional groups are in accordance with those used by the Sea Around Us Project                                                                                                                                                                                                                           |
| NomActive        | Nominal fishing effort (i.e., not including the technological creep) of the active fleet | Days at sea X kW | NomActive (of the active fleet; i.e., total) = P (engine power of active the fleet; i.e., total) x DAS (average days at sea of one vessel). Average DAS for one vessel \~ 200 DAS/year. NomActive corresponds to the total (reported, IUU, discards) catch. To find NomActive in DAS do (NomActive/P) X NV |
| Phase            | Phase (year ranges) of simulation run                                                    | Text             | Spin-up, transition, experiment, or validation                                                                                                                                                                                                                                                             |

#### Fishing effort forcing file locations

The monthly fishing effort forcing files for the spin-up and experiments (Table 1) of this simulation protocol can be found on DKRZ here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/socioeconomic/fishing/histsoc/
```

#### Note on global model fishing effort forcing

For **global models**, the above spatially aggregated fishing effort can be spatially allocated into 0.25 grid cells. This can be achieved using different approaches such as a simple gravity model -- e.g. see [Coll et al. 2020](https://www.frontiersin.org/articles/10.3389/fmars.2020.567877/full) but details will depend on model structure.

We are developing a simplified worked example for global modellers to explore and contribute to. This will be made available on github/FishMIP in due course.

While we recommend using the above spatially aggregated effort, for **global models** that cannot technically carry out spatial allocation of effort, gridded total industrial and artisanal nominal active effort have been provided in the same folder as the file above and are saved as netcdf files. These can be allocated to functional groups (e.g. according to relative biomass) depending on model structure.

#### Note on regional model fishing effort forcing

Downscaling of the above fishing effort to match regional model inputs is likely to be needed. We request that regional modellers work together in their specific regions to ensure we have clear and common methodologies.

We are developing a worked example for regional modellers to explore and contribute to for their region which will be made available on github/FishMIP in due course.

#### Note on model calibration using fishing catch data and model evaluation requirements

Modellers are permitted to calibrate or tune their models using historical fisheries catch data (that will also be used for model evaluation) on the condition that **only years up to and including 2004** are used in model calibration/tuning.

Modelling groups **must** keep **detailed documentation** on how their model was calibrated (e.g. input forcing, calibration data, time domain, spatial domain, fish grouping (size, functional types, total), optimization metric(s), weighting schemes, etc.) to be included in manuscript methods. Written description of sources of calibration data and methods used need to be provided with all simulation outputs. A template will be provided for this documentation in due course.

The fisheries catch data .csv file that can be used for model calibration is here:

``` linux
levante:/work/bb0820/ISIMIP/ISIMIP3a/InputData/socioeconomic/fishing/histsoc/catch-validation_isimip3a_histsoc_1850_2004.csv.
```

The fisheries catch data are already aggregated into the functional groups and spatial zones as the above effort forcing data. The original reference including links to full database is [Watson & Tidd, 2018, Marine Policy, 93: 171-177](https://www.sciencedirect.com/science/article/pii/S0308597X18300605).

### **Other static geographic information**:

Large marine ecosystem (LME) masks in four different spatial resolutions. 0.1°, 0.25°, 0.5° and 1° are available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/geo_conditions/fishmip_regions/
```

Each region has its own variable within each file.

We have also provided conversion tables that can be used to look up LME and SAUP names according to the numeric codes used in the catch and effort files (e.g. LME 22 -- North Sea). These files (SAUPnames.csv and LMEnames.csv) are also available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/geo_conditions/fishmip_regions/
```

## Output data {#output-data}

All spatially gridded outputs should be created as netcdf files. More information on how to prepare these files can be found [here](https://www.isimip.org/protocol/preparing-simulation-files). Aspatial regional model results may be saved as .csv files.

In the output files, please label the time variable as "days since 1841-1-1 00:00:00" if the output covers the spin-up and transition period (1841-1960) or "days since 1901-1-1 00:00:00" if the output covers the experiment period (1961-2010).

##### Table 9: Mandatory output variables for Fisheries and Marine Ecosystem models (global and regional). See notes on additional optional model outputs below. Please use the value 1.e+20 for missing data within your output files. **All biomasses are in wet weight (not g C).**

+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Variable long name                                                                             | Variable specifier | Unit  | Resolution | Comments                                                                                                                                    |
+================================================================================================+====================+=======+============+=============================================================================================================================================+
| Total Consumer Biomass Density                                                                 | **tcb**            | g m-2 | 0.25° grid | All consumers (trophic level \>1, vertebrates and invertebrates)                                                                            |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Consumer Biomass Density in log10 Weight Bins                                            | **tcblog10**       | g m-2 | 0.25° grid | **Level dimensions:** (time, bins, lat, lon).                                                                                               |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    | If the model is size-structured, please provide biomass in equal log 10 g weight bins (1-10g, 10-100g, 100g-1kg, 1-10kg, 10-100kg, \>100kg) |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Pelagic Biomass Density                                                                  | **tpb**            | g m-2 | 0.25° grid | All pelagic consumers (trophic level \>1, vertebrates and invertebrates)                                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Demersal Biomass Density                                                                 | **tdb**            | g m-2 | 0.25° grid | All demersal consumers (trophic level \>1, vertebrates and invertebrates)                                                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Catch Density (all commercial functional groups / size classes)                          | **tc**             | g m-2 | 0.25° grid | Catch at sea (all catch as a result of all effort including reported and IUU) summed for both Industrial and Artisanal sector.              |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Industrial Catch Density (all commercial functional groups / size classes)               | **tic**            | g m-2 | 0.25° grid | Catch at sea (all catch as a result of all effort including reported and IUU) for Industrial sector only.                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Catch Density in log10 Weight Bins across both sectors                                   | **tclog10**        | g m-2 | 0.25° grid | **Level dimensions:** (time, bins, lat, lon).                                                                                               |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    | If the model is size-structured, please provide biomass in equal log 10 g weight bins (1-10g, 10-100g, 100g-1kg, 1-10kg, 10-100kg, \>100kg) |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Pelagic Density Catch across Artisanal and Industrial sectors                            | **tpc**            | g m-2 | 0.25° grid | Catch at sea of all pelagic consumers (trophic level \>1, vertebrates and invertebrates)                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Total Demersal Catch Density across Artisanal and Industrial sectors                           | **tdc**            | g m-2 | 0.25° grid | Catch at sea of all demersal consumers (trophic level \>1, vertebrates and invertebrates)                                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| **Optional output from global and regional models. All biomasses are in wet weight, not g C.** |                    |       |            |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Small Pelagics \<30cm                                                       | **bp30cm**         | g m-2 | 0.25° grid | If a pelagic species and L infinity is \<30 cm, include in this variable                                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Medium Pelagics \>=30cm and \<90cm                                          | **bp30to90cm**     | g m-2 | 0.25° grid | If a pelagic species and L infinity is \>=30 cm and \<90cm, include in this variable                                                        |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Large Pelagics \>=90cm                                                      | **bp90cm**         | g m-2 | 0.25° grid | If a pelagic species and L infinity is \>=90cm, include in this variable                                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Small Demersals \<30cm                                                      | **bd30cm**         | g m-2 | 0.25° grid | If a demersal species and L infinity is \<30 cm, include in this variable                                                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Medium Demersals \>=30cm and \<90cm                                         | **bd30to90cm**     | g m-2 | 0.25° grid | If a demersal species and L infinity is \>=30 cm and \<90cm, include in this variable                                                       |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Biomass Density of Large Demersals \>=90cm                                                     | **bd90cm**         | g m-2 | 0.25° grid | If a demersal species and L infinity is \>=90cm, include in this variable                                                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Small Pelagics \<30cm                                                         | **cp30cm**         | g m-2 | 0.25° grid | Catch at sea of pelagic species with L infinity \<30 cm                                                                                     |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Medium Pelagics \>=30cm and \<90cm                                            | **cp30to90cm**     | g m-2 | 0.25° grid | Catch at sea of pelagic species with L infinity \>=30 cm and \<90 cm                                                                        |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Large Pelagics \>=90cm                                                        | **cp90cm**         | g m-2 | 0.25° grid | Catch at sea of pelagic species with L infinity \>=90 cm                                                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Small Demersals \<30cm                                                        | **cd30cm**         | g m-2 | 0.25° grid | Catch at sea of demersal species with L infinity \<30 cm                                                                                    |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Medium Demersals \>=30cm and \<90cm                                           | **cd30to90cm**     | g m-2 | 0.25° grid | Catch at sea of demersal species with L infinity \>=30 cm and \<90 cm                                                                       |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+
| Catch Density of Large Demersals \>=90cm                                                       | **cd90cm**         | g m-2 | 0.25° grid | Catch at sea of demersal species with L infinity \>=90 cm                                                                                   |
|                                                                                                |                    |       |            |                                                                                                                                             |
|                                                                                                |                    |       | monthly    |                                                                                                                                             |
+------------------------------------------------------------------------------------------------+--------------------+-------+------------+---------------------------------------------------------------------------------------------------------------------------------------------+

## Additional notes for Regional FishMIP Models {#additional-notes-for-regional-fishmip-models}

More specific protocols for each regional model type will be developed through our monthly online regional modeller sessions. Please contact regional FishMIP coordinators for more information.

As a first step, regional modellers will need to provide shapefiles for their respective model domains for us to help with spatial extraction of the above global climate and fishing effort forcing inputs.

Region-specific climate forcing variables will be made available here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/InputData/climate/ocean/<obsclim> or <ctrlclim>/regional/
```

A .csv file with fishing effort extracted for regional model ecosystems is also available in the same folder as the global fishing effort data (`../fishing/histsoc`), for regional models that have provided shapefiles.

Regional modellers may wish to make their raw unaggregated output available for more detailed analyses, including for example, a wider range of functional groups/size classes/species and ecosystem indicators. Please discuss this with FishMIP regional coordinators before uploading files.

## Reporting model results {#reporting-model-results}

The specification on how to submit the data, as well as further information and instructions are given on the ISIMIP website at:

<https://www.isimip.org/protocol/preparing-simulation-files>

**It is important that you comply precisely with the formatting specified there**, to facilitate the analysis of your simulation results in the ISIMIP framework. Incorrect formatting can seriously delay analyses. The ISIMIP Team will be glad to assist with the preparation of these files if necessary.

File names consist of a series of identifier, separated by underscores. Things to note:

-   Report one variable per file.

-   In filenames, use lowercase letters only.

-   Use underscore (\_) to separate identifiers.

-   Variable names consist of a single word without hyphens or underscores.

-   Use hyphens (-) to separate strings within an identifier, e.g. in a model name.

-   Data model is NETCDF4_CLASSIC with minimum compression level of 5.

-   NetCDF file extension is .nc.

-   The relative time axis' reference date is days since 1841-1-1 00:00:00 if the output covers the spin-up and transition period (1841-1960) or days since 1901-1-1 00:00:00 if the output covers the experiment period (1961-2010). We have provided .csv files to be used for the time dimension in creating NetCDF files based on the 365 days calendar. Please see time_axix_spinup.csv and time_axis_experiment.csv in this repository. The script time_axis.r was used to create these files.

### Name pattern of output files:

Please name the files in the Fisheries and Marine Ecosystems sector according to the following pattern:

**Global models**

``` linux
<model>_<climate-forcing>_<bias-adjustment>_<climate-scenario>_<soc-scenario>_<sens-scenario>_<variable>_<global>_<time-step>_<start-year>_<end-year>.nc
```

Example:

``` linux
boats_gfdl-mom6_cobalt2_none_obsclim_histsoc_default_tcb_global_monthly_1961_2010.nc
```

**Regional models**

``` linux
<model>_<climate-forcing>_<bias-adjustment>_<climate-scenario>_<soc-scenario>_<sens-scenario>_<variable>_<region>_<time-step>_<start-year>_<end-year>.nc
```

Example:

``` linux
osmose_gfdl-mom6_cobalt2_none_obsclim_histsoc_default_tcb_benguela_monthly_1961_2010.nc
```

Please see the climate-scenario, soc-scenario, sens-scenario and variable identifiers given in the tables of this document.

### Path to outut files on DKRZ:

**Global models**

The output files covering the spin-up period (1841-1960) can be saved on DKRZ here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_global/model_name/temp2
```

The output files covering the experiment period (1961-2010) can be saved on DKRZ here

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_global/model_name/temp
```

**Regional models**

The output files covering the spin-up period (1841-1960) can be saved on DKRZ here:

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_regional/model_name/temp2
```

The output files covering the experiment period (1961-2010) can be saved on DKRZ here

``` linux
/work/bb0820/ISIMIP/ISIMIP3a/UploadArea/marine-fishery_regional/model_name/temp
```

Please contact FishMIP coordinators ([fishmip.coordinators\@gmail.com](mailto:fishmip.coordinators@gmail.com)) or ISIMIP data managers directly ([isimip-data\@pik‐potsdam.de](mailto:isimip-data@pik%E2%80%90potsdam.de)) if you have any questions or clarifications before submitting files or if you do not find your model's path on DKRZ as described above.

**Please contact FishMIP coordinators** if you would like to participate in this simulation round but have encountered issues with any aspect of the protocol.

(For fishing): please provide all assumptions about catchability, technological creep, and model calibration.

Please provide any conversion factors that you have used to convert units.

### **Thank you for your contributions to FishMIP and ISIMIP!**

FishMIP is entirely community-driven, and we appreciate the effort of all involved.