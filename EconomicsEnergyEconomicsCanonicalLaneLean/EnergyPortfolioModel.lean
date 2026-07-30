import EconomicsEnergyEconomicsCanonicalLaneLean.ArrowDebreuEquilibrium

namespace HautevilleHouse
namespace EconomicsEnergyEconomicsCanonicalLaneLean

structure EnergyAsset where
  name : String
  expectedReturn : ℝ
  variance : ℝ
  carbonIntensity : ℝ

deriving Repr

structure EnergyPortfolio where
  weights : List ℝ
  assets : List EnergyAsset
  carbonFootprint : ℝ

def portfolioExpectedReturn (p : EnergyPortfolio) : ℝ :=
  List.zipWith (λ w a => w * a.expectedReturn) p.weights p.assets
  |>.foldl (·+·) 0

def portfolioVariance (p : EnergyPortfolio) : ℝ :=
  List.zipWith (λ w a => (w^2) * a.variance) p.weights p.assets
  |>.foldl (·+·) 0

end EconomicsEnergyEconomicsCanonicalLaneLean
end HautevilleHouse