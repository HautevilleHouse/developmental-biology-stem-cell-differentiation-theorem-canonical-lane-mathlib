import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure MorphogenGradient where
  concentration : Type u
  sourcePosition : Type v
  decayRate : Prop
  gradientShape : Prop

structure MorphogenAdmissibleClass (M : MorphogenGradient) where
  object : M
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def morphogenClosed (M : MorphogenAdmissibleClass) : Prop :=
  M.endpointSatisfied ∨ M.remainderRecorded

theorem morphogen_closed_from_gate (M : MorphogenAdmissibleClass) :
    morphogenClosed M := by
  exact M.gateWitness

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse