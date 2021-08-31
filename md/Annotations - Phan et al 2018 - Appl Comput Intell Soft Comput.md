## A new fuzzy logic-based similarity measure applied to large gap imputation for uncorrelated multivariate time series

Phan TT, Bigand A, Caillault ÉP
Appl. Comput. Intell. Soft Comput., 2018




compares performance of multiple imputation methods on time series data with long time gaps. not explicitly gps, but useful because the method is explicitly for low correlation situations. maybe good for long gaps when individuals don't really have much own data




> imperfect time series can be modelled using fuzzy sets.




> The objective of this study is to fill large missing values in uncorrelated multivariate time series




> This method makes it possible to build a new hybrid similarity measure for finding similar values between subsequences of time series.




> The proposed imputation method is based on the retrieval and the similarity comparison of available subsequences.




> . A 𝑇-gap is large when the duration 𝑇 is longer than known change process.




> Further, an important point of our approach is that each incomplete signal is processed as two separated time series, one time series before the considered gap and one time series after this gap




> In the proposed approach, the dynamics and the shape of data before and after a gap are a key-point of our method.




> Amelia II (Amelia II R-package) [57]: The algorithm uses the familiar expectation-maximization algo- rithm on multiple bootstrapped samples of the orig- inal incomplete data to draw values of the complete data parameters. The algorithm then draws imputed values from each set of bootstrapped parameters, replacing the missing values with the drawn values.




> DTWUMI [62]: For each gap, this approach finds the most similar window to the subsequence after (resp. before) the gap based on the combination of shape- features extraction and Dynamic Time Warping algo- rithms. Then, the previous (resp. following) window of the most similar one in the incomplete signal is used to complete the gap.




> The results clearly show that when a gap size is greater than 2%, the proposed method yields the gap size is greater than 2%, the proposed method yields the highest similarity, 𝑅2, FA2, and the lowest RMSE, FB.




> In contrast to the two datasets above, on the MAREL- Carnot data, na.approx indicates quite good results: the permanent second or third rank for the accuracy indices (the permanent second or third rank for the accuracy indices (the 1𝑠𝑡 order at 5% missing rate on 𝑅2 score), the lowest FSD (from 3% to 5% missing rates), and FB at some other levels of missing data. But when looking at the shape of imputation values generated from this method, it absolutely gives the worst results (Figure 6).




> Other approaches (including FcM-based imputation, MI, MICE, Amelia, and missForest) exploit the relations between attributes to estimate missing values. However, three con- sidered datasets have low correlations between variables (roundly 0.2 for MAREL-Carnot data, ≤ 0.1 for simulated and synthetic datasets). So these methods do not demon- strate their performance for completing missing values in low/uncorrelated multivariate time series.




