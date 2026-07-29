import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure MorphogenGradientSensing where
  morphogenConcentration : Type u
  gradientSensing : Prop
  thresholdResponse : Prop
  positionalIdentity : Prop

def MorphogenGradientClosed (M : MorphogenGradientSensing) : Prop :=
  M.gradientSensing ∧ M.thresholdResponse ∧ M.positionalIdentity

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse