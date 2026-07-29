import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure TranscriptionFactorNetworkPackage where
  coreRegulatoryCircuit : Prop
  feedForwardLoops : Prop
  crossRepression : Prop
  lineageSpecification : Prop

structure TranscriptionFactorNetworkEvidence (T : TranscriptionFactorNetworkPackage) where
  coreRegulatoryCircuitClosed : T.coreRegulatoryCircuit
  feedForwardLoopsClosed : T.feedForwardLoops
  crossRepressionClosed : T.crossRepression
  lineageSpecificationClosed : T.lineageSpecification

def TranscriptionFactorNetworkClosed (T : TranscriptionFactorNetworkPackage) : Prop :=
  T.coreRegulatoryCircuit ∧ T.feedForwardLoops ∧ T.crossRepression ∧ T.lineageSpecification

theorem tf_network_closed_from_evidence
    (T : TranscriptionFactorNetworkPackage) (E : TranscriptionFactorNetworkEvidence T) :
    TranscriptionFactorNetworkClosed T := by
  exact And.intro E.coreRegulatoryCircuitClosed
    (And.intro E.feedForwardLoopsClosed
      (And.intro E.crossRepressionClosed E.lineageSpecificationClosed))

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse