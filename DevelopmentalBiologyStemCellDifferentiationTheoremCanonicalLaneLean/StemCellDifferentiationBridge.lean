import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure StemCellDifferentiationClosure (A : MorphogenAdmissibleClass) where
  endpointSatisfied : A.endpointSatisfied
  remainderRecorded : A.remainderRecorded
  geneNetworkClosed : NetworkClosed ({
    nodes := []
    edges := []
    attractorStates := True
    bifurcationParameters := True
  } : GeneRegulatoryNetwork)
  markovClosed : MarkovClosed ({
    states := []
    initialDistribution := ()
    stationaryDistribution := True
    firstPassageTimes := True
  } : CellFateDecisionMarkov)
  landscapeClosed : LandscapeClosed ({
    cellStateSpace := ()
    potentialFunction := ()
    valleyBottom := True
    ridgeCrossing := True
  } : WaddingtonLandscape)
  nicheClosed : NicheClosed ({
    ecm := { composition := (), stiffness := 0.0, ligandConcentration := () }
    signaling := { growthFactor := (), cytokine := (), janusKinaseSTAT := True, notchDelta := True }
    oxygenTension := 0.0
    cellCellContact := True
    mechanicalForces := True
  } : NicheMicroenvironment)

def ConstrainedStemCellClosure (A : MorphogenAdmissibleClass) : Prop :=
  (bridgeClosed A) ∧ (gateClosed A)

theorem stem_cell_differentiation_endgame (A : MorphogenAdmissibleClass) :
    ConstrainedStemCellClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse