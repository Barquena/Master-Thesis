# Documentation

## **EMBARGO**
The data used to make this analysis is under Embargo. Only the methods used will be shared in this repository.

## Background
Today, is it still unclear if having a systemic morphological right ventricle (sRV) has a worse impact on a patient cardiorespiratory fitness as to have a disease impairing the function of a systemic morphological left ventricle (sLV). To change from the usual approach of looking at specific markers without knowing the real impact on the cardiorespiratory fitness of patients, principal components analysis is an interesting approach that could allow to find pattern never consider before or simply confirm the previous conclusion of past strudies. That is, this unsupervised machine learning technique allowed us to explore from a different angle the potentional relationships between clinical markers and the type of morphological ventricle in systemic position.

## Methods
A total of 25 patients with a sRV were matched to 25 patients with a sLV. Exact matching was used for sex and NYHA (i.e. respiratory impairment; 1 = no impairment, 2 = mild, 3 = moderate, and 4 = severe) classification. Coarse exact matching was used for age, BMI, diuretics doses, and ejection fraction of the respective systemic ventricle. Principal components analysis was done with Python (*version* 3.10.6) and Sklearn packages (*version* 0.24.1). The 2 greatest contributing components for the sRV ans sLV groups were plot with matPlotLib pakages (*version* 3.6.1). The script for this analysis was based on VanderPlas, J [1]. 

## Results

It turns out that the sRV and the sLV groups have a common principal component that explains a good portion of the variance seen in both populations (sRV, variance = 20% vs sLV, variance = 18%). The Figure 1 displays graphically this relation However,  this component has poor correlation with their respective second-most contributing principal component (sRV, *r* = -0.12 vs sLV, *r* = -0.10). The figure 2 displays graphically this relation.

![output](https://github.com/Barquena/Master-Thesis/assets/90822097/e040d70a-8a3d-4976-b0e6-a0e785436300)

### Figure 1 - *Relation of principal components in patients with a systemic morphological right ventricle and a systemic morphological left ventricle*
> Because data is under embargo, principal(s) component(s) (PC) will not be disclose. *PC1*, with is the same variable for patients with a systemic morphological right ventricle (sRV) and patients with a systemic morphological left ventricle (sLV) , explained 20% and 18% of variance respectiveley; *PC2_A*, explained 13% of vairance in sRV patients; *PC2_B* explained 22% of variance in sLV patients. Left panel (🔴) - systemic right ventricle, right panel (🔵) - systemic left ventricle.

![output2](https://github.com/Barquena/Master-Thesis/assets/90822097/0fdd38c3-d59b-4eb6-aa05-303cda4c9d97)

### Figure 2 - *Relation in most variance contributing variable indentified in systemic morphological right ventricle and a systemic morphological left ventricle patients*
> Because data is under embargo, variable names were replaced with principal(s) component(s) (PC) names. *PC1*, which is the same variable for patients with a systemic morphological right ventricle (sRV) and patients with a systemic morphological left ventricle (sLV), correlate poorly with their respective second most contributing principale components. Left panel (🔴) - systemic right ventricle, right panel (🔵) - systemic left ventricle.

## Conclusion
The data being under embargo, it is not possible to disclose what was the similar most contributing principal component found between the sRV and sLV groups. That is, this principal component is an excellent prognostic marker. Its relation to other prognostic markers or its use as a pairing characteristic in future studies should be considered.
## Bibliography

[1] VanderPlas, J. (n.d.). In depth: Principal component analysis. In Depth: Principal Component Analysis | Python Data Science Handbook. https://jakevdp.github.io/PythonDataScienceHandbook/05.09-principal-component-analysis.html 
