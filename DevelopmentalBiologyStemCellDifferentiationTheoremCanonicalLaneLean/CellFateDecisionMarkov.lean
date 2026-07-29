import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure MarkovState where
  cellType : Type u
  transitionProbabilities : Type v
  absorbingStates : Prop

structure CellFateDecisionMarkov where
  states : List MarkovState
  initialDistribution : Type w
  stationaryDistribution : Prop
  firstPassageTimes : Prop

structure MarkovEvidence (M : CellFateDecisionMarkov) where
  stationaryDistributionClosed : M.stationaryDistribution
  firstPassageTimesClosed : M.firstPassageTimes

def MarkovClosed (M : CellFateDecisionMarkov) : Prop :=
  M.stationaryDistribution ∧ M.firstPassageTimes

theorem markov_closed_from_evidence (M : CellFateDecisionMarkov) (E : MarkovEvidence M) :
    MarkovClosed M := by
  exact And.intro E.stationaryDistributionClosed E.firstPassageTimesClosed

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse