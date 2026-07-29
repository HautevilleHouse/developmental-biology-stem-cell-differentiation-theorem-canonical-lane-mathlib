import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure StemCellAdmittedObject where
  cellType : Type u
  pluripotency : Prop
  differentiationPotential : Prop
  cellState : Type v
  cellStateTopology : TopologicalSpace cellState
  stateTransitionWitness : Prop
  conclusion : stateTransitionWitness

structure StemCellAdmissibleClass where
  object : StemCellAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse