import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

def bridgeClosed (A : StemCellAdmissibleClass) : Prop :=
  A.object.differentiationStatus ∧ A.object.geneExpression ∧ A.object.epigeneticState

theorem bridge_from_admissible_class (A : StemCellAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
