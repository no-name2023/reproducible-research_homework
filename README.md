# Reproducible research: version control and R


## Questions 1/2/3 

https://github.com/zoe-george/logistic_growth 

## Question 4 

i) After executing the code provided in the `question-4-code` folder of this repo I managed to produce this plot which shows two random walks: 

#### Graph to show two random walks
![Image to show the graph with the two random walks](https://github.com/zoe-george/reproducible-research_homework/blob/f6f7c808f62419562acab79ed97c3bd7cdd62a0c/random%20walk%20graph.png)

As we can see the code has produced two random walks 'data1' and 'data2' and plotted them next to each other. The random walk is represented as a sequence of points in a 2D space starting at (0,0) and then taking steps in random directions at each time point. In this case, the number of steps has been set to 500 so the time also goes from 1 to 500. At each time point, the walker takes steps of a fixed length (0.25) and the direction is determined by a random angle. The colour of the line represents the progression of time going from darker blue at time 0 to light blue at time 500. From the plots we can see that in the 'data1' walk the walker has a general trajectory in the positive direction on the x-axis and the negative direction on the y-axis. In this case the walker starts of taking steps around 0 on the x-axis but moving up and down. It then starts to move right and down and ends up around the coordinate (6,-6). As expected the random walk produced by 'data2' is very different to this. In this case the walker starts by going in the negative x-direction and the positive y-direction. It then begins to go in the positive x-direction while still going in the positive y-direction. It finally ends up on a roughly negative direction on both axes and ends around the coordiantes (-2,4). So as we can see these two random walks have produced very different trajectories overall which is to be expected because the movement is stochastic. If you run the code again you get two different random walks. 

ii) A random seed is a starting point used in random number generating algorithms. It is an initial value provided to a random number generator (RNG) to ensure the sequence it produces is reproducible. It can also be used in psuedorandom number generators (PRNG) which produce a sequence of values that appear to be random according to specified statistical tests. If you start with the same random seed in a RNG or a PRNG you will generate the same sequence of numbers. This works because a random number generating program or algorithm uses a seed to produce a sequence of numbers, so if the seed is the same the sequence will always come out the same. If a different seed is used then the sequence of numbers produced will be different. Using a fixed seed ensures reproducibility which is important when the same sequence of random numbers is needed. 

iii) Permalink to new code: https://github.com/zoe-george/reproducible-research_homework/blob/8adb0093dc0c0e8f06d539915606fc85c03d003d/question-4-code/random_walk.R   

Below is the graph generated from the reproducible simulation of Brownian motion: 

#### Graph to show reproducible simulation of Brownian motion when two random seeds are chosen
![Image to show the graph produced when two random seeds are chosen](https://github.com/zoe-george/reproducible-research_homework/blob/62de569b1d2a9f2adda9ab75d4d26afb7b1ae7f3/random%20seed%20graph.png)

iv) Here is an image to show the changes I made to my code in order to make a reproducible simulation of Brownian motion: 

![Image to show the chnages made to my code](https://github.com/zoe-george/reproducible-research_homework/blob/bf9bbe3b07d7c837b2b39e49cf630c2c10e8c462/code.edits.png)

## Question 5

i) This data has 13 columns and 33 rows

ii) I performed a logarithmic transformation of this data in order to make it linear and produced this graph: 

#### Graph to show log transformed virion volume vs genome length
![Graph to show log transformed virion volume vs genome length](https://github.com/zoe-george/reproducible-research_homework/blob/6595a81c5ac2112b25e74476beacd28baae425c4/Log%20transformed%20virion%20volume%20vs%20genome%20length%20.png)

iii) Using the allometric law for dsDNA viruses I found that: 

The exponent ($\alpha$) = 1.515228 
The scaling factor ($\beta$) = 1181.807 




## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
