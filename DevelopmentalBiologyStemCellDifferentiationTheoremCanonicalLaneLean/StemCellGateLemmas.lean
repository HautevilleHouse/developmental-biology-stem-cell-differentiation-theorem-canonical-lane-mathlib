import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

def gateClosed (A : StemCellAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : StemCellAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse
