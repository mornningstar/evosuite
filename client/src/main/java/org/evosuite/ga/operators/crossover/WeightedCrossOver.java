package org.evosuite.ga.operators.crossover;

import org.evosuite.ga.Chromosome;
import org.evosuite.ga.ConstructionFailedException;

public class WeightedCrossOver extends CrossOverFunction {
    @Override
    public void crossOver(Chromosome parent1, Chromosome parent2) throws ConstructionFailedException {
    		// Is there more than one test case? If not, we cannot crossover.
		if(parent1.size() < 2 || parent2.size() < 2){
			return;
		}
		
		// If we have not returned, then there must be enough tests.
		// Now, find the middle of each parent.

		double score1 = parent1.getFitness();
		double score2 = parent2.getFitness();

		

		if(score1 > score2){
			int cut1 = (int) (Math.round(parent1.size() / 3.0 * 2.0));
			int cut2 = (int) (Math.round(parent2.size() / 3.0));

			Chromosome t1 = parent1.clone();
			Chromosome t2 = parent2.clone();

			// Perform the crossover operation.
			parent1.crossOver(t2, cut1, cut2);
			parent2.crossOver(t1, cut2, cut1);
		}else{
			int cut1 = (int) (Math.round(parent1.size() / 3.0));
			int cut2 = (int) (Math.round(parent2.size() / 3.0 * 2.0));

			Chromosome t1 = parent1.clone();
			Chromosome t2 = parent2.clone();

			// Perform the crossover operation.
			parent1.crossOver(t2, cut1, cut2);
			parent2.crossOver(t1, cut2, cut1);
		}		

	}
}