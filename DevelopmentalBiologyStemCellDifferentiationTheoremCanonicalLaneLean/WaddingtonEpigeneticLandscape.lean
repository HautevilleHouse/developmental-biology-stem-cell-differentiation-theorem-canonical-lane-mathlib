import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure WaddingtonEpigeneticLandscape where
  valleyStructure : Prop
  cellFateAttractors : Prop
  entropyPotential : Prop
  landscapeDynamics : Prop

def WaddingtonLandscapeClosed (W : WaddingtonEpigeneticLandscape) : Prop :=
  W.valleyStructure ∧ W.cellFateAttractors ∧ W.entropyPotential ∧ W.landscapeDynamics

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse