import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

def ConstrainedStemCellDifferentiationClosure (A : StemCellAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_stem_cell_endgame (A : StemCellAdmissibleClass) :
    ConstrainedStemCellDifferentiationClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
