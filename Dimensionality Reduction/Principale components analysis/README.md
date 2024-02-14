# Documentation

## **EMBARGO**
The data used to make this analysis is under Embargo. Only the methods used will be shared in this repository.

## Background
Today, is it still unclear if having a systemic morphological right ventricle (sRV) has a worse impact on the cardiorespiratory fitness of an individual as to have a disease impairing the function of a systemic morphological left ventricle (sLV). To change from the usual paradigm of looking at specific markers without knowing the real impact on the cardiorespiratory fitness of patients, principal components analysis was chosen. This unsupervised machine learning technique allowed us to explore from a different angle the potentional relationships between clinical markers and the type of morphological ventricle in systemic position.

## Methods
A total of 25 patients with a sRV were matched to 25 patients with a sLV. Exact matching was used for sex and NYHA (i.e. respiratory impairment; 1 = no impairment, 2 = mild, 3 = moderate, and 4 = severe) classification. Coarse exact matching was used for age, BMI, diuretics doses, and ejection fraction of the respective systemic ventricle. Principal components analysis was done with Python (*version* 3.10.6) and Sklearn packages (*version* 0.24.1). The 3 marjors components for the sRV ans sLV groups were plot with matPlotLib pakages (*version* 3.6.1). Graphical representations of the marjor components for both groups were inspired by VanderPlas, J [1]. 

## Results

### Figure 1 - *Difference between patients with a systemic right ventricle and a systemic left ventricle*
> Because data is under embargo, principal(s) component(s) (PC) will not be disclose. *PC1*, explained 18% of variance; *PC2*, explained 16% of vairance; *PC3* explained 10% of variance. Group 0 (🔴) - systemic right ventricle; group 1 (🔵) - systemic left ventricle. 

## Discussion

## Conclusion


## Bibliography

[1] VanderPlas, J. (n.d.). In depth: Principal component analysis. In Depth: Principal Component Analysis | Python Data Science Handbook. https://jakevdp.github.io/PythonDataScienceHandbook/05.09-principal-component-analysis.html 
