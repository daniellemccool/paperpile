## Effects of Data Preprocessing Methods on Addressing Location Uncertainty in Mobile Signaling Data

Xu Y, Li X, Shaw SL, Lu F, Yin L, Chen BY
Ann. Assoc. Am. Geogr., 2021




paper gives a method for what is effectively stay point detection using CDR but importantly points out that the mobility measures are dependent on the sort of preprocessing done and the parameters selected for e.g. distance and time




> choice of preprocessing methods could lead to changes in the data characteristics




> The number of records of a trajectory vary nota- bly from each other, with mean and median values of 59.3 and 41.0, respectively (Figure 1A). The interevent time, measured as the duration between two consecutive records in a trajectory, ranges from a few seconds to several hours (F




> The two-stage clustering and time window–based methods are frequently used in existing studies to tackle location uncertainty issues in mobile phone data.




> the two- stage clustering method is primarily used to generalize users’ documented locations to derive their represen- tative locations (e.g., stay locations). The time win- dow–based method focuses explicitly on detecting and removing oscillations in the data.




> in the first stage, we com- pare each observation with the subsequent one and merge them into a segment if they fall within a roaming distance of Dd1: We use the medoid of these observations—defined as the most visited cell in that segment—as its representative location. The representative location is then compared with the next observation, which will be merged into the same segment if they (representative location of the segment and the observation) fall within Dd1: The representative location of the segment will be updated as more observations are added. The clustering process will terminate until all seg- ments are identified. This results in a sequence fðl0 1 0 1, t0 1 0 1, dur1Þ,ðl0 2 0 2, t0 2 0 2, dur2Þ, :::,ðl0 n 0 n, t0 n 0 n, durnÞg where l0 i 0 i, t0 i 0 i, and duri denote the medoid, starting time, and the stay duration of the ith segment, respectively




> By imposing a moving window with a fixed length (e.g., 5 minutes), the method aims to detect circular events—subsequences in a trajectory that start and end at the same cell—and identify those within the time window as oscillations




> The result suggests that the way the oscillations are tackled in the mobile signaling data could have a notable impact on the estimation of OD trips.




> this mobility indicator than performing the time window–based method, given that the latter is more or less a downsampling pro- cess of mobile phone trajectories. The result indicates that by ignoring structural prop- erties of oscillations in a trajectory, the estimation of total stay time can be off by several hours or even longer




> Our results demonstrate that the choice of data prepro- cessing methods could lead to changes in the data characteristics. Such changes, which are nontrivial, will further affect the characterization of human mobility patterns.




> that cell tower oscillations tend to be more pronounced in densely populated areas. Ignoring the uncertainty issues in the mobile phone data will have a larger impact on these areas, where decision making on urban design and manage- ment is frequently needed




