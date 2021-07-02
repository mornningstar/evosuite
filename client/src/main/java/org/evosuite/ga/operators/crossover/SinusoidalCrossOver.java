package org.evosuite.ga.operators.crossover;

import org.evosuite.ga.Chromosome;
import org.evosuite.ga.ConstructionFailedException;
import org.evosuite.utils.Randomness;
import org.evosuite.utils.LoggingUtils;

public class SinusoidalCrossOver extends CrossOverFunction {
    @Override
    public void crossOver(Chromosome parent1, Chromosome parent2) throws ConstructionFailedException {
    		// Is there more than one test case? If not, we cannot crossover.
		if(parent1.size() < 2 || parent2.size() < 2){
			return;
		}

        parent1.crossOver(parent2);
		parent2.crossOver(parent1);
	}
}