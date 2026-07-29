import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure WaddingtonLandscape where
  cellStateSpace : Type u
  potentialFunction : Type v
  valleyBottom : Prop
  ridgeCrossing : Prop

structure EpigeneticLandscapeEvidence (L : WaddingtonLandscape) where
  valleyBottomClosed : L.valleyBottom
  ridgeCrossingClosed : L.ridgeCrossing

def LandscapeClosed (L : WaddingtonLandscape) : Prop :=
  L.valleyBottom ∧ L.ridgeCrossing

theorem landscape_closed_from_evidence (L : WaddingtonLandscape) (E : EpigeneticLandscapeEvidence L) :
    LandscapeClosed L := by
  exact And.intro E.valleyBottomClosed E.ridgeCrossingClosed

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse