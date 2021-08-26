## Likelihood-based offline map matching of GPS recordings using global trace information

Knapen L, Bellemans T, Janssens D, Wets G
Transp. Res. Part C: Emerg. Technol., 2018




important paper on map matching, outlines the technique and state of the art etc. doesn't consider missing data and lowest density is once per 30 sec.




> The technique proposed in this paper is aimed at offline (batch) map matching of GPS traces.




> Quddus et al. (2007) provide a comprehensive overview of online map matchers. 




> Nowadays map matchers are based on the multi-hypothesis technique (MHT) about the position of the vehicle.




> Recent online map matchers, starting with Greenfeld (2002), usually incorporate topology constraints




> Schüssler and Axhausen (2009) state that map matching of person traces requires high resolution network information




> map matching techniques (both online and offline) are classified as (i) pure geometry based methods, (ii) topological methods, (iii) probabilistic methods and (iv) advanced procedures. Pure geometric methods are further classified by Quddus et al. (2007) as point to point matching (finding the nearest node or shape point), point to curve matching (finding the polyline to which the distance is minimal) and curve to curve matching (matching the vehicle trajectory against known roads).




> curve to curve matching




> problem of non-connected walks




> The route candidates then are assigned a score and in order to avoid huge sets of route candidates, only the N route candidates having the best scores are kept (N = 30). Each GPS point can match at most one link in each route candidate and each link in the route needs at least one GPS fix




> The paper concludes that the value reported in Marchal et al. (2005) is a valid one; the average score per GPS point does not significantly decrease with the candidate set size for N > 30. It also reports that the processing time per point is between 10 [ms] (for N = 20) and 75 [ms] (for N = 100).




> hou and Golledge (2006) use a similar procedure implemented in ArcGIS. GPS recordings are processed sequentially and a pool of candidate solutions is kept. In a preprocessing stage, they first replace clusters of GPS points by their centroid (cluster reduction) but also add interpolated GPS points when the distance between two consecutive points is larger than half of the minimum length for the links in the buffer defined by the two GPS points. Then a 2-norm (distance) and a rotation measure are used to determine the weight for each point in the preprocessed dataset. A set of candidate partial paths is kept and extended so that a connected walk results from the method.




> Feng and Timmermans (2013) use a Bayesian Belief Network (BBN) to replace the ad hoc rules used in map matchers not making use of the multi-hypothesis technique (MHT), to select the next road segment candidate in a route.




> Chen et al. (2011) propose a probabilistic method to simultaneously detect the road segment sequence and the transportation modes used. The likelihood that a given multi-modal path in a network generates the observed sequence of smartphone data is estimated. The measurement equations establish the probability that a given path generates a given time series of measurements.




> The methods mentioned above process the GPS points in chronological order




> Brakatsoulas et al. (2005) propose three algorithms: (i) a greedy algorithm processing one point at a time using a distance and an angular criterion to select the next edge, (ii) a recursive local look-ahead method (inspecting up to 4 network links and GPS points ahead) and (iii) a global method that minimizes the Fréchet distance between curves




> free space concept then is extended to free space surface in order to compare a curve C to a graph (each edge combined with C generates a free space and those are combined into a free space surface). surface). The sequence of GPS coordinates constitutes a piecewise linear curve. For a given ∊, the free space surface for such curve and each path in the graph is computed.




> Wei et al. (2012) present a clear overview of the information and weight functions used in published maximal weight methods. A global method based on a hidden Markov model (HMM) and the Viterbi probability maximization is proposed.




> shortest paths are inserted to connect each link matched by the first fix to each link matched by the second fix.




> Deka and Quddus (2015) present a global method for trip based offline map matching that minimizes the additional data re- quirements like route choice, mobility patterns, etc.




> In the method presented in this paper (i) a set of multiple initial matches is allowed, (ii) outliers are processed according to the GPS device accuracy, (iii) the concept of likelihood (as opposed to weight) is used, (iv) direction is not considered and (v) a graph is build that allows for enumeration of high likelihood candidate paths for posterior application of rules based on additional as- sumption




> If subsequent research aims to verify a particular hypothesis H to hold for W, then the map matcher shall not use any assumptions that affect the hypothesis H verification. Example: when the final result serves to assess speeding behavior the link selection stage shall not include speeding related behavior assumptions (e.g. respecting maximum speed on road segments)




> Results of map matching are used in research projects that focus on the analysis of revealed travel behavior. In particular, researchers aim to extract properties of routes revealed by GPS traces in order to support route choice set generation (i.e. the same purpose as the one mentioned in Bierlaire et al. (2013)). This leads to the requirement to efficiently derive the route in the road network that has the highest probability to have generated the time series of GPS recordings. Such route in general corresponds to a graph theoretical walk (repeated visits of edges and vertices allowed) and not necessarily to a path (no repeated visits allowed)




> On one hand, gap filling by means of shortest route segments in the case of missing recordings reduces the route complexity; hence it introduces bias and needs to be avoided.




> This paper proposes a map matching method based on likelihood maximization in which the requirement to have at least one GPS record for each link is relaxed.




> The road network is modeled by a directed graph G ( , ) V E T , ) V E T T T , ) V E T T T T ) V E T T T . The superscript T is used to identify the transportation graph. Each vertex v V ∈ T corresponds to a node in the network. Each edge e E ∈ T is associated to an ordered pair of nodes 〈v v s t , 〉 and identifies the set of lanes of a particular road segment usable to move from the source vs to the target vt. A bidirectional road segment is represented by two edges




> The trace is subdivided into contiguous subtraces.




> Subgraphs for chronologically consecutive subtraces are constructed so that they are not disjoint




> Maximum likelihood (MLH) partial routes are determined for each entry-exit combination




> A new acyclic digraph is build in which each edge represents a MLH partial route.




> Each such part corresponds to a period in time (denoted by p) which is defined by the first and last recordings in the part.




> construct a graph GU in which each vertex represents the assumption that a specific link l is used in a specific period p 




> In summary, the trace is partitioned. Each part corresponds to a time period. Each GPS record in a part matches the same set of links and these links constitute the subnetwork that is crossed during the time period. A computationally feasible method is proposed to find the maximum likelihood walks linking the entries to the exits in the subnetwork. The subnetworks then are assembled by connecting exits to entries. This results in a layering of subnetworks for which the maximum likelihood crossing walks are known. A simple recursive algorithm then is used to fine the maximum likelihood walk for the observed trace.




> The proposed method may fail if the GPS trace contains too many consecutive erroneous recordings.




> Given the accuracy threshold a and the associated probability p , we derive that the probability to find Ne consecutive erroneous recordings is given by (1 ) −p Ne




> The distance d between the true position and the measured one then is given by d = + e e lon lat 2 e lon l + e e lon lat lon lat 2 lat 2 2 and has a Rayleigh distribution: d ∼ Rayleigh σ( ). The probability that the error is larger than d is determined as follows.




> We deliberately refrain from making the likelihood dependent on the speed because part of the traces are produced by vehicles in




> congested traffic.




> because at least one correct link match is required to start the algorithm.




> Multiple chronologically consecutive recordings may generate the same MLS (illustrated in Fig. 1). This allows to partition the sequence of recordings into contiguous subsequences such that two chronologically consecutive recordings belong to the same part if and only if they share the MLS




> Haklay et al. (2010) investigated the positional accuracy for OpenStreetMap roads in the Greater London area. 109 different roads having a total length of 328[km] were compared to their counterpart in ITN (Integrated Transport Network) maps for which it can be assumed that the error is below 1 [m]. It is concluded that if 15 contributors are active in an area, the positional error for the road is well below 6 [m]. In complete areas the average error is 9.57 [m] with a standard deviation is 6.51 [m]. In incomplete areas the average error is 11.72 [m] and the standard deviation is 7.73 [m]. Completeness is defined as ‘a measure of the lack of data’ and examined for specific areas by Haklay (2010) using visual inspection of maps and by comparing (by means of GIS) the total road length found in OSM and in reference maps respectively.




> accuracy based on the number of extra links − An accuracy based on the number of missed links + Ad accuracy based on the total length (distance) of the extra links − Ad accuracy based on the total length (distance) of the missed links




> The maximum is taken in order to avoid negative accuracy values in cases of extremely short trips where ≈ ≈ ≈ + − |L L |L + − |L L − |L L L ≈ ≈ ≈ + − |L L L | | ≈ ≈ + − |L L L | | | | ≈ + − |L L L | | | | | 1




> The accuracy value based on distance (Ad) is slightly lower for the 2 [s] recording period than for the 5 [s] recording period. The effect is less prominent for the accuracy based on the number of correctly matched links (An). It may have been caused by incorrect selection of short links in the 2 [s] case because, on average, more GPS recordings are available for each link.




> Processing time however heavily grows with the recording period and becomes too high. The matching radius RM is proportional to the recording period (time- space prism) and hence the SNTS grows which causes more options to be evaluated




> The simple heuristic poses a problem for short trips consisting of a single link.




> The evaluation of these walks in GT using particular (travel behavior related) scoring functions requires a simple extension of the tool. This can be compared to the evaluation of the Fréchet distance for each path in Brakatsoulas et al. (2005).




> The U-turn problem mentioned in Schüssler and Axhausen (2009) did not require any particular technique to be implemented in the proposed method




> . Future research – extensions 1. Investigation of the number of near MLH sequences and of their properties is required. This includes estimating the effects on performance and accuracy of changes of the assumed global upper bound for the speed. 2. Investigation of the distribution for the results of behavior related scoring functions to the set of near MLH walks. 3. Determination and evaluation of a heuristic likelihood estimate that takes timing into account at a finer level. The current technique derives the link sequence order from topology and chronology but the GPS times are not used to determine consecutive positions on a single link. Extending the method in this way may solve the problem with single link trips mentioned in Section 5.1 item 2 but it may also improve the estimate of the likelihood and hence the accuracy of the method. 4. Computational performance for cases where the recording period is large needs to be increased.




> Apart from the coordinates and the order induced by the timestamps, no other information is required.




