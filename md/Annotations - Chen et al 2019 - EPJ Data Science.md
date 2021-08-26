## Complete trajectory reconstruction from sparse mobile phone data

Chen G, Viana AC, Fiore M, Sarraute C
EPJ Data Science, 2019




really important paper, may be one method of solving long gaps in paper 3. they use tensors on repeated data, so this is a way of integrating the repeatability of human mobility into the mix.




> "Call Detail Records (CDR) are the current de-facto standard for mobile phone data used in human mobility studies."
 Call detail records are much more sparse than the data that we collect but are more reliably collected --they have few missing data themselves but rather they are imperfect annotations of the underlying movement behavior that itself must be interpreted.




> e introduce our novel approach, CTR, which leverages well-known features of human mobility to customize tensor factorization 




> it is performed at quite different temporal res- olutions by works in the literature, spanning from 15 minutes [14] to 1 hour [3, 4], or even




check these references




> Indeed, when extensive knowledge of the user mobility is required by the nature of the investigation, the straightforward way to deal with incomplete trajectory data is that of filtering users so as to exclude from the analysis those with insufficient location information. This is typically performed by imposing thresholds on the amount of mobility data available in CDR, though there is hardly a standard to define them. As a reference, several important works opt for a choice of users who have a minimum average sampling frequency of 0.5 events per hour, and who are observed at two unique locations at least [3, 4, 14]. User filtering comes with a cost in terms of below-threshold users that are excluded from the analysis. Unfortunately, in practical cases involving CDR datasets, even the loose requirements set by the thresholds mentioned above risk to lead to severe reductions in the examined user population. For instance, two very well-known studies analyze just 1.67% [3] and 0.45% [4] of the total subscribers available in their datasets upon filtering, leaving substantial richness in the original data untapped.




> by assuming that users do not move for some periods (e.g., in the order of hours) before and after every recorded event in the CDR dataset




> 17]. A different strategy hinges on probabilistic reconstruction, implemented by modeling positions between two CDR events as random variables




> We first quantify the amount of missing information in the individual trajectories. To this end, we assume a total observation time T and discretize it into time intervals of duration τ , which we will refer to as the temporal resolution.We define the completeness of a specific trajectory as the fraction of time intervals for which we have at least one location sample. As an example, let us assume that T = 7 days and the temporal resolution is τ = 1 hour: then, a trajectory with locations in 80 different hours has a completeness of 80/(7 × 24) = 0.476




> Table 2 summarizes the results. Goodness-of-fit tests consistently point at either of two distributions, i.e., Weibull and lognormal, depending on the combination of system pa- rameters.




> The PDF of the Weibull distribution is expressed as fWeibull(x) = k λ k λ ( x λ x λ )k–1e–(x/λ)k . Plots (b) and (c) of Fig. 3 show that the estimated Weibull parameters k and λ scale linearly (Pearson correlation coefficients of 0.89 and 0.98, respectively) with the most important system




> parameter, τ . Also, the observation time T introduces an offset to the linear relationship. We thus model k ˆ k ˆ = [τ × (4.569 – 0.01037T ) + 1086.5 – 1.14515T ] × 10–3 and λˆ = [τ × (1.814 – 0.00379T ) + 26.23 – 0.07659T ] × 10–3, and the CDF of CDR-based trajectory completeness as fWeibull(x; k k ˆ , λˆ).




> oscillations




> We define the observed trajectory of non-null locations as LΩ = {li | i ∈ Ω}; this is the user mobility information that can be derived from the mobile phone data.




> Prevalence of static phases. 




check these references




> Overnight invariance. 




> Regularity of movement. 




> The first step in CTR aims at reconstructing missing portions of a trajectory during the night hours




> We first identify the most frequent location visited by the user during nighttime, which we name ˆlH . Then, we verify that ˆlH accounts for a conservative 80% (or more) of the po- sitions of the user during the night period. If this is not the case, we deem that the result is not consistent enough to establish with high confidence the actual home location of the user, and we skip the nighttime trajectory reconstruction step




> location tensor of a user X . A trajectory LT is represented as daily and weekly combinations of one-day sub-trajectories




> Tensor factorization exploits redundancy to recover missing data; in our context, redundancy is created by the regularity of human movement, which creates repeated pat- terns of visited locations over the many days and weeks covered by a CDR dataset, as discussed in Sect. 4.2.




> First, the trajectory is split into multiple one-day sub-trajectories. Each one-day sub-trajectory is then converted into a one-dimensional vector: for instance, the sub-trajectory of the jth day of the ith week is denoted by xi,j and satisfies xi,j = (l(x) ni,j (x) ni,j,1 ,l(y) ni,j (y) ni,j,1 ,...,l(x) ni,j (x) ni,j,Nτ ,l(y) ni,j (y) ni,j,Nτ ) ∈ R2Nτ , where l(x) k (x) k and l(y) k (y) k are the two coordinates that identify the location at time step k, for lk = (l(x) k (x) k ,l(y) k (y) k ). • Second, we enter all of the one-day sub-trajectories of a user trajectory into the location tensor by organizing them into a matrix of one-day sub-trajectories for all Nw weeks in the observation period T , i.e., X = [xi,j]Nw×Nd = {Xi,j,k}Nw×Nd×2Nτ 




> decomposes the tensor into hyper-parameters and then uses them to infer missing value




check references 25 26




> Indeed, (i) daily periodicities tend to stronger than weekly ones [3], and (ii) consecutive time slots, hence nearby values in same one-day sub-trajectory vector, show a strong correlation in terms of locations of t user [18] [18]. In the light of these considerations, we customize the TF problem for locati inference, by introducing two additional elements to the optimization problem in




> The first element emphasizes daily repetitive mobility patterns by means of Toepli matrices. Toeplitz matrices allow modelling relationships between specific elements the location tensor.




> towers. Instead, the solution of the enha ed TF problem in (4) returns locations whose coordinates are real values, which may no match the position of actual cellular towers.




> We remark that the available fine-grained ground-truth trajectories bound our validation to a two-week period. We




> We en- sure that the incomplete trajectories mimic the temporal sampling properties of those extracted from CDR as follows: (i) we construct an empirical distribution of the probabil- ity that events are recorded at each time slots, based on CDR data of all 1.8 million users in our dataset; (ii) we set the desired completeness value k that shall characterize the out- put incomplete trajectory; (iii) we retain a fraction k of the overall location samples in one complete trajectory according to a random selection of time slots that follows the empirical distribution above




> performance metric we adopt is cell displacement, which expresses the MAE used in (1) in terms of mobile network cells




> The level of reconstruction accuracy achieved by CTR is acceptable for metropolitan- scale analyses




> As a preliminary result in their analysis, Gonzalez et al. find that the travel distances and radiuses of gyration aggregated over the whole user population follow truncated power laws (x + x0)–β e–x/k . We confirm that this is also the case under complete trajectory data, as shown in the top plots of Fig. 9. The exponent values are also consistent, as Gonzalez et al. find βr = 1.77 and βrg = 1.65, whereas βr = 1.78 and βrg = 1.68 from our complete trajectory data. However, we remark a sensible difference in the cutoff values. Travel distances can be sensibly higher in complete data; also, krg is at 400 km in [3], which is not far from the 340 km from our original




also probably holds for long gap missing data in our study




> trips. Our conclusion is that, CDR data sparsity risks to both underestimate long trips, and overestimate the region within which the Lévy flight behavior of human mobility occurs.




> that the extremely high uniqueness identified by De Montjoye et al. is mainly caused by the diverse temporal patterns of the mobile communications of each user, rather than by his/her dis- tinctive mobility. 




> The mean predictability is at 81%, which is high yet quite far from the 93% found by Song et al




