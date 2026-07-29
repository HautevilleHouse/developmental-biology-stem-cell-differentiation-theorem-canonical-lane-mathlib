import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure WaddingtonLandscapePackage where
  potentialSurface : Prop
  canalization : Prop
  bifurcationPoints : Prop
  deterministicOutcome : Prop

structure WaddingtonLandscapeEvidence (W : WaddingtonLandscapePackage) where
  potentialSurfaceClosed : W.potentialSurface
  canalizationClosed : W.canalization
  bifurcationPointsClosed : W.bifurcationPoints
  deterministicOutcomeClosed : W.deterministicOutcome

def WaddingtonLandscapeClosed (W : WaddingtonLandscapePackage) : Prop :=
  W.potentialSurface ∧ W.canalization ∧ W.bifurcationPoints ∧ W.deterministicOutcome

theorem waddington_landscape_closed_from_evidence
    (W : WaddingtonLandscapePackage) (E : WaddingtonLandscapeEvidence W) :
    WaddingtonLandscapeClosed W := by
  exact And.intro E.potentialSurfaceClosed
    (And.intro E.canalizationClosed
      (And.intro E.bifurcationPointsClosed E.deterministicOutcomeClosed))

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse