import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure LineageCommitmentBifurcationPackage where
  masterRegulatorToggle : Prop
  crossRepressionModule : Prop
  stochasticGeneExpression : Prop
  commitmentThreshold : Prop
  lineagePlasticity : Prop

structure LineageCommitmentBifurcationEvidence
    (L : LineageCommitmentBifurcationPackage) where
  masterRegulatorToggleClosed : L.masterRegulatorToggle
  crossRepressionModuleClosed : L.crossRepressionModule
  stochasticGeneExpressionClosed : L.stochasticGeneExpression
  commitmentThresholdClosed : L.commitmentThreshold
  lineagePlasticityClosed : L.lineagePlasticity

def LineageCommitmentBifurcationClosed
    (L : LineageCommitmentBifurcationPackage) : Prop :=
  L.masterRegulatorToggle ∧ L.crossRepressionModule ∧
  L.stochasticGeneExpression ∧ L.commitmentThreshold ∧
  L.lineagePlasticity

theorem lineage_commitment_bifurcation_closed_from_evidence
    (L : LineageCommitmentBifurcationPackage)
    (E : LineageCommitmentBifurcationEvidence L) :
    LineageCommitmentBifurcationClosed L := by
  exact And.intro E.masterRegulatorToggleClosed
    (And.intro E.crossRepressionModuleClosed
      (And.intro E.stochasticGeneExpressionClosed
        (And.intro E.commitmentThresholdClosed
          E.lineagePlasticityClosed)))

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse