## A distributionally robust optimization approach to reconstructing missing locations and paths using high-frequency trajectory data

Zhao S, Zhang K
Transp. Res. Part C: Emerg. Technol., 2019




this is about using map matching from users own historic trajectories in order to fill long gaps. probably going to be one of my primary references in doing that. kinda hard to follow though




> positioning errors could be larger than 2.5 m even with high-precision GPS devices (e.g., u- blox GPS modules). The missing observations, caused by the discontinuity and errors of the data, incur uncertainties and make the ). The missing observations, caused by the discontinuity and errors of the data, incur uncertainties and make the high-frequency trajectories cannot be directly used to observe individual location-duration-path choices. Methods to solve these gh-frequency trajectories cannot be directly used to observe individual location-duration-path choices. Methods to solve these uncertainties are data-driven models including machine learning and Distributionally Robust Optimization (DRO) models (e.g., DRO g machine learning and Distributionally Robust Optimization (DRO) models (e.g., DRO with moment bounds and DRO with likelihood bounds).




> In this paper, we apply the DRO models with likelihood bounds in a data-driven optimization modeling framework to reconstruct paper, we apply the DRO models with likelihood bounds in a data-driven optimization modeling framework to reconstruct the missing location-duration-path choices using high-frequency trajectory data over many days. The raw trajectory data will be first g location-duration-path choices using high-frequency trajectory data over many days. The raw trajectory data will be first processed by a map-matching model to observe historical choices of location-duration-path. Furthermore, we can identify the missing processed by a map-matching model to observe historical choices of location-duration-path. Furthermore, we can identify the missing observations in space and time dimensions from the map-matched results. For the missing observations, we then apply data-driven pace and time dimensions from the map-matched results. For the missing observations, we then apply data-driven network-time prisms to reduce the search spaces for the potential location-duration-path choices. In the reduced search spaces, we prisms to reduce the search spaces for the potential location-duration-path choices. In the reduced search spaces, we formulate the DRO models with likelihood bounds to reconstruct the missing choices.




> prisms (Fig. 1(b)) to reduce the search spaces for the estimation of missing location-duration-path choices. For each individual, we can identify a network-time prism as a reduced space of potential location-duration-path choices for , we can identify a network-time prism as a reduced space of potential location-duration-path choices for a missing period. Then, two DRO models with likelihood bounds are applied to reconstruct the location-duration-path choices for the g period. Then, two DRO models with likelihood bounds are applied to reconstruct the location-duration-path choices for the missing observations. Fin




> the many-day trajectory data, we can solve a map-matching problem to detect the locations/stays and match the paths from y-day trajectory data, we can solve a map-matching problem to detect the locations/stays and match the paths from the observed trajectories for individuals. Based on the map-matched results, we identify a set of all possible location-duration-path jectories for individuals. Based on the map-matched results, we identify a set of all possible location-duration-path choices for the missing observations for each individual.




> ; White et al., 2000; Chen et al., 2003; Ochieng et al., 2003; Quddus et al., 2003; Yin and Wolfson, 2004; Meng, 2006; Tang et al., 2016). We use the map-matching model from Tang et al. (2016) to match the observed trajectories to ; Meng, 2006; Tang et al., 2016). We use the map-matching model from Tang et al. (2016) to match the observed trajectories to the ground-truth network.




> The data-driven network-time prism is an envelope of location-duration choices and path choices for the missing observations. prism is an envelope of location-duration choices and path choices for the missing observations. The classic network-time prism estimates all reachable locations and paths considering constraints of geometry, connectivity, and speed limit geometry, connectivity, and speed limit (Miller, 1991; Tang et al., 2016). Different from the classic network-time prism, a data-driven network-time prism first peed limit (Miller, 1991; Tang et al., 2016). Different from the classic network-time prism, a data-driven network-time prism first defines a search space using the observed link travel time from many-vehicle trajectories over many days.




> the time budget (i.e. the time period of missing observations) for the missing observations from location sto a d ( ) ( ) is the time budget (i.e. the time period of missing observations) for the missing observations from location sto location r.




> g records. Based on the calculation of path travel time from the driving records, we have two possible path choices for the inbound trip (i.e., path travel time from the driving records, we have two possible path choices for the inbound trip (i.e., trip index 0 from the observed location r in pair g records, we have two possible path choices for the inbound trip (i.e., trip index 0 from the observed location r in pair ( , ) r s to the missing location) and four possible path choices for the outbound trip p index 0 from the observed location r in pair ( , ) r s to the missing location) and four possible path choices for the outbound trip (i.e., trip index 1 from the missing location to the observed location s in pair ) and four possible path choices for the outbound trip (i.e., trip index 1 from the missing location to the observed location s in pair ( , ) r s ) in Table 3. According to the optimal solution of the (i.e., trip index 1 from the missing location to the observed location s in pair ( , ) r s ) in Table 3. According to the optimal solution of the DRO model, we derive the probabilities for all the possible path choices




> In the future, we can gher confidence level increases the probability value of the missing choice. In the future, we can apply the proposed modeling framework to a joint location-duration-path model to find the most likely location-duration-path pply the proposed modeling framework to a joint location-duration-path model to find the most likely location-duration-path choices simultaneously for the missing observations if we have long-period (e.g. over one year) high-frequency trajectory data.




