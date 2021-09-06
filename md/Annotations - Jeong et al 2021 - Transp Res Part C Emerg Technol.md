## Variational embedding of a hidden Markov model to generate human activity sequences

Jeong S, Kang Y, Lee J, Sohn K
Transp. Res. Part C Emerg. Technol., 2021




potentially interesting way of solving long gaps through an HMM generating activity states based (in this case) on travel diary results.




> ysov et al., 2019; Valarezo et al., 2020; and Butepage et al., 2019) In the present study, a model process was devised to generate human activity sequences and the corresponding qualitative in­ formation using passively collected mobile data. The model uses a fully probabilistic process of generating an activity sequence present study, a model process was devised to generate human activity sequences and the corresponding qualitative in­ formation using passively collected mobile data. The model uses a fully probabilistic process of generating an activity sequence to overcome the drawbacks of the deterministic estimation of human activity. An HMM and a VAE were incorporated into a single g passively collected mobile data. The model uses a fully probabilistic process of generating an activity sequence to overcome the drawbacks of the deterministic estimation of human activity. An HMM and a VAE were incorporated into a single modeling framework such that the former generates activity sequences in a fully stochastic manner, and the latter moves the clustering y. An HMM and a VAE were incorporated into a single modeling framework such that the former generates activity sequences in a fully stochastic manner, and the latter moves the clustering task from an inconsistent observation space into a homogeneous latent space with a smaller dimension. Such an integrated approach is g framework such that the former generates activity sequences in a fully stochastic manner, and the latter moves the clustering task from an inconsistent observation space into a homogeneous latent space with a smaller dimension. Such an integrated approach is rarely found in the literature regarding inferences for human activity. As far as we could ascertain, the present study is the first attempt pace into a homogeneous latent space with a smaller dimension. Such an integrated approach is rarely found in the literature regarding inferences for human activity. As far as we could ascertain, the present study is the first attempt to jointly formulate a VAE and an HMM to infer and synthesize chains of human activity based on a real mobile dataset. y found in the literature regarding inferences for human activity. As far as we could ascertain, the present study is the first attempt to jointly formulate a VAE and an HMM to infer and synthesize chains of human activity based on a real mobile dataset. Researchers have recently attempted to apply the same integrated approach to automatic speech recognition (Ebbers 




> We set up a stochastic process to generate an activity sequence with prior distributions of variables, which are based on a Markov process and Gaussian emission with latent embedding. A variational inference (VI) approach was adopted to estimate the posterior p a stochastic process to generate an activity sequence with prior distributions of variables, which are based on a Markov process and Gaussian emission with latent embedding. A variational inference (VI) approach was adopted to estimate the posterior distribution of latent variables conditional on 




> chain. The number of candidate activities must be predefined, even though each cannot be titled from scratch. The generation of an activity chain begins with the selection of the first activity. The initial proposed a probabilistic process to generate an activity chain. The number of candidate activities must be predefined, even though each cannot be titled from scratch. The generation of an activity chain begins with the selection of the first activity. The initial activity within an activity chain is assumed to be randomly selected via a categorical probabilistic distribution π = (π1,⋯,πNs). Eq. (1) gh each cannot be titled from scratch. The generation of an activity chain begins with the selection of the first activity. The initial activity within an activity chain is assumed to be randomly selected via a categorical probabilistic distribution π = (π1,⋯,πNs). Eq. (1) shows the probability that the initial activity will become a specific activity, s1. Once the initial activity within an activity 




> The proposed VAE-HMM can be trained in either a supervised or an unsupervised manner. The supervised training was for the inference of activities, and the unsupervised training was for the synthesis of observed features for activity sequences. Basically, feature proposed VAE-HMM can be trained in either a supervised or an unsupervised manner. The supervised training was for the inference of activities, and the unsupervised training was for the synthesis of observed features for activity sequences. Basically, feature data labeled with true activity types are necessary even for the unsupervised training so that the model performance can be validated. , and the unsupervised training was for the synthesis of observed features for activity sequences. Basically, feature data labeled with true activity types are necessary even for the unsupervised training so that the model performance can be validated. The present study utilized household travel diaries collected for the purpose of transportation planning in the Seoul metropolitan area. 




> y was conducted every 5 years for households that were randomly sampled by about 2.5% of the population. The trip diary data includes 7 different activity types and relevant features of household and individuals who participated in the survey. The trip diary data were collected only for a single day, and multi-date activity chains could not be analyzed. The activity p diary data includes 7 different activity types and relevant features of household and individuals who participated in the survey. The trip diary data were collected only for a single day, and multi-date activity chains could not be analyzed. The activity chains extracted from the household travel diaries were used to train and test the proposed model. Several individual- or 




> g. 5 (a) compares the observed and estimated marginal distributions of features. As shown in the figure, the proposed VAE-HMM reproduced almost exact distributions for binary discrete variables of individual-specific features. For continuous features, the marginal pares the observed and estimated marginal distributions of features. As shown in the figure, the proposed VAE-HMM reproduced almost exact distributions for binary discrete variables of individual-specific features. For continuous features, the marginal distri­ butions of synthesized features were also very close to those of the observed features except for several features with y discrete variables of individual-specific features. For continuous features, the marginal distri­ butions of synthesized features were also very close to those of the observed features except for several features with observed probabilistic density that deviated greatly from the normal distribution. Exceptions could have occurred because decoder output was ynthesized features were also very close to those of the observed features except for several features with observed probabilistic density that deviated greatly from the normal distribution. 




> The model performance could be improved in the future by regarding the global parameters as random. Although random parameters increase the computation burden, the basic global parameters are all fixed for the brevity of modeling. The model performance could be improved in the future by regarding the global parameters as random. Although random parameters increase the computation burden, the basic structure of the proposed VAE-HMM will not change. For this, we are devising a plausible graphical representation of the Bayesian y regarding the global parameters as random. Although random parameters increase the computation burden, the basic structure of the proposed VAE-HMM will not change. For this, we are devising a plausible graphical representation of the Bayesian modeling. Furthermore, the proposed VAE-HMM 




