import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure StemCellTranscriptomeLandscape where
  geneRegulatoryNetwork : Type u
  epigenomePlasticity : Type v
  signalingLandscape : Type w
  landscapeTopology : TopologicalSpace geneRegulatoryNetwork
  potencyGradient : Prop
  cellStateTrajectory : Prop
  bifurcationStructure : Prop

def StemCellTranscriptomeLandscapeClosed (L : StemCellTranscriptomeLandscape) : Prop :=
  L.potencyGradient ∧ L.cellStateTrajectory ∧ L.bifurcationStructure

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse