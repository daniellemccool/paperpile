## An Interpolation Method for Trajectory Measurement Missing Data Based on Bidirectional Unequal Interval Kernel Adaptive Filtering

Li Z, Zhao S, Li D
2019 12th International Congress on Image and Signal Processing, BioMedical Engineering and Informatics (CISP-BMEI), 2019




uses a kernel method to interpolate short gaps in trajectories from both sides to the middle of the gap and runs it multiple times in order to allow the newly predicted points to impact the model. doesn't work well where transitions are not smooth. uses down sampling of the points




> when the number of missing data points is large, the extrapolation accuracy of the ARMA model is limited, and the compensation accuracy of the spline function is affected by the number of nodes and the boundary points, and the interpolation precision is also not high. Therefore, this paper proposes a trajectory missing data interpolation method based on bidirectional unequal interval kernel adaptive filtering.




> The kernel adaptive filter is essentially an adaptive filtering method that maps training samples to high-dimensional feature spaces and uses kernel methods in the mapping process




> The basic idea of the bidirectional prediction method is that the pair of the training samples is formed by the measured data before and after the missing data segment for the kernel adaptive filter. Point-by-point prediction of missing data from forward and reverse is performed using two kernel adaptive filters. In this way, no matter from the forward prediction or the backward prediction, the time span of the missing data is half of the entire missing data segment, so the accuracy of the predicted data point can be greatly improved.




> If the sample points with redundant information are down-sampling, the time interval of one step prediction can be lengthened. Let the down-sampling time is k , then the output of the prediction data point is ikt+Δ . Through the down-sampling operation, the predicted time can be lengthened to compensate for the problem of reduced accuracy of the filtered prediction output data.




> if the vehicle target has a significant acceleration or deceleration change in the missing data segment, causing the externally lost segment data to appear discontinuous, the performance of the filtered prediction interpolation method needs further verification.




