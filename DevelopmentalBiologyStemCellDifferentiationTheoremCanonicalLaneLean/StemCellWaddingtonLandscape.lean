import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure WaddingtonLandscapePackage where
  potentialLandscape : Type
  cellStatePath : Type
  attractorBasins : Prop
  fateDecisionPoints : Prop
  landscapeGradient : Prop

structure WaddingtonLandscapeEvidence (W : WaddingtonLandscapePackage) where
  attractorBasinsClosed : W.attractorBasins
  fateDecisionPointsClosed : W.fateDecisionPoints
  landscapeGradientClosed : W.landscapeGradient

def WaddingtonLandscapeClosed (W : WaddingtonLandscapePackage) : Prop :=
  W.attractorBasins ∧ W.fateDecisionPoints ∧ W.landscapeGradient

theorem waddington_landscape_closed_from_evidence (W : WaddingtonLandscapePackage) (E : WaddingtonLandscapeEvidence W) :
    WaddingtonLandscapeClosed W := by
  exact And.intro E.attractorBasinsClosed (And.intro E.fateDecisionPointsClosed E.landscapeGradientClosed)

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
