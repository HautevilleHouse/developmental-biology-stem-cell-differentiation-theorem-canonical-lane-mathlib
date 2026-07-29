import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure GeneRegulatoryNetworkPackage where
  transcriptionFactors : Type
  targetGenes : Type
  regulatoryEdges : Type
  networkTopology : Prop
  feedbackLoops : Prop
  stabilityUnderPerturbation : Prop

structure GeneRegulatoryNetworkEvidence (N : GeneRegulatoryNetworkPackage) where
  networkTopologyClosed : N.networkTopology
  feedbackLoopsClosed : N.feedbackLoops
  stabilityUnderPerturbationClosed : N.stabilityUnderPerturbation

def GeneRegulatoryNetworkClosed (N : GeneRegulatoryNetworkPackage) : Prop :=
  N.networkTopology ∧ N.feedbackLoops ∧ N.stabilityUnderPerturbation

theorem gene_regulatory_network_closed_from_evidence
    (N : GeneRegulatoryNetworkPackage) (E : GeneRegulatoryNetworkEvidence N) :
    GeneRegulatoryNetworkClosed N := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.feedbackLoopsClosed E.stabilityUnderPerturbationClosed)

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse