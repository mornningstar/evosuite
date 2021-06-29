package org.evosuite.ga.operators.crossover;

import org.evosuite.ga.Chromosome;
import org.evosuite.ga.ConstructionFailedException;
import org.evosuite.utils.Randomness;
import org.evosuite.utils.LoggingUtils;

public class TwoPointsCrossOver extends CrossOverFunction {
    @Override
    public void crossOver(Chromosome parent1, Chromosome parent2) throws ConstructionFailedException {
    		// Is there more than one test case? If not, we cannot crossover.
		if(parent1.size() < 2 || parent2.size() < 2){
			return;
		}
		
        int point1 = (int) (Math.round(parent1.size() / 3.0 * 2.0));
		int point2 = (int) (Math.round(parent1.size() / 3.0));


        int point3 = (int) (Math.round(parent2.size() / 3.0 * 2.0));
		int point4 = (int) (Math.round(parent2.size() / 3.0));


        Chromosome t11 = parent1.clone();
		Chromosome t21 = parent2.clone();
        Chromosome t12 = parent1.clone();
		Chromosome t22 = parent2.clone();

        t11.crossOver(t21,point1, point3);
        t22.crossOver(t12,point3, point1);



        parent1.crossOver(t22, point2, t22.size()-1);
		parent2.crossOver(t11, point4, t11.size()-1);


	}
}