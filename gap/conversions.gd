#! @Chapter Conversions
#! There is a bijection between integer partitions and Young diagrams, 
#! and between Young diagrams and numerical sets.
#! The methods implemented here are simplified compositions of that bijections between integer partitions and numerical sets.

#! @Section Converting A NumericalSet to IntegerPartition

#! @Label
#! @Arguments NumericalSet
#! @Returns IntegerPartition
#! @Description Calculates
#!              $\lambda=\lambda_1+\lambda_2+\dots+\lambda_\ell$
#!              from
#!              $S=\{s_1=0,s_2,\dots,s_{\ell},\to\}$
#!              where
#!              $\lambda_i=g(S)-1+i-s_i$.

DeclareAttribute( "IntegerPartition", IsNumericalSet);

#! @Section Converting An IntegerPartition to NumericalSet

#! @Label
#! @Arguments IntegerPartition
#! @Returns Numerical set corresponding to the given integer partition.
#! @Description Calculates
#!              $S=\{s_1=0,s_2,\dots,s_{\ell+1},\to\}$
#!              from
#!              $\lambda=\lambda_1+\lambda_2+\dots+\lambda_\ell$
#!              where
#!              $s_i=g(\lambda)-1+i-\lambda_i$.
DeclareAttribute( "NumericalSet", IsIntegerPartition );

DeclareAttribute( "SmallElements", IsIntegerPartitionOrNumericalSet );
DeclareAttribute( "SmallElementsAlt", IsIntegerPartitionOrNumericalSet );

#! @Arguments IntegerPartition
#! @Returns List
DeclareAttribute( "Gaps", IsIntegerPartition );


#! @Arguments S
#! @Returns $\{i-s_i\mid i=G_S\dots F_S, s_i\in S\}$. 
#! @Description Here $G_S$ is the genus and $F_S$ is the Frobenius number of $S$.
DeclareAttribute( "Parts", IsNumericalSet );
