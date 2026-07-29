import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure SignalTransductionCascadePackage where
  ligandReceptorBinding : Prop
  intracellularPhosphorylation : Prop
  secondMessengerDynamics : Prop
  pathwayCrossTalk : Prop
  signalAmplification : Prop

structure SignalTransductionCascadeEvidence
    (C : SignalTransductionCascadePackage) where
  ligandReceptorBindingClosed : C.ligandReceptorBinding
  intracellularPhosphorylationClosed : C.intracellularPhosphorylation
  secondMessengerDynamicsClosed : C.secondMessengerDynamics
  pathwayCrossTalkClosed : C.pathwayCrossTalk
  signalAmplificationClosed : C.signalAmplification

def SignalTransductionCascadeClosed (C : SignalTransductionCascadePackage) : Prop :=
  C.ligandReceptorBinding ∧ C.intracellularPhosphorylation ∧
  C.secondMessengerDynamics ∧ C.pathwayCrossTalk ∧
  C.signalAmplification

theorem signal_transduction_cascade_closed_from_evidence
    (C : SignalTransductionCascadePackage)
    (E : SignalTransductionCascadeEvidence C) :
    SignalTransductionCascadeClosed C := by
  exact And.intro E.ligandReceptorBindingClosed
    (And.intro E.intracellularPhosphorylationClosed
      (And.intro E.secondMessengerDynamicsClosed
        (And.intro E.pathwayCrossTalkClosed
          E.signalAmplificationClosed)))

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse