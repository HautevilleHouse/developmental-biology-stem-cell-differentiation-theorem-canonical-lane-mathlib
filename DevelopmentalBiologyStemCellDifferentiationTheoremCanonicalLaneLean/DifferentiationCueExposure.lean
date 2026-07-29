import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean

structure DifferentiationCuePackage where
  cueType : Type u
  exposureTime : Type v
  signalTransduction : Prop
  transcriptionalResponse : Prop
  epigeneticRemodeling : Prop

def DifferentiationCueClosed (D : DifferentiationCuePackage) : Prop :=
  D.signalTransduction ∧ D.transcriptionalResponse ∧ D.epigeneticRemodeling

end DevelopmentalBiologyStemCellDifferentiationTheoremCanonicalLaneLean
end HautevilleHouse