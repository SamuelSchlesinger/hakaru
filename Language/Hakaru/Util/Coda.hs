module Language.Hakaru.Util.Coda where

import Statistics.Autocorrelation
import qualified Numeric.LinearAlgebra as V
import qualified Data.Vector.Generic as G

effectiveSampleSize :: [Double] -> Double
effectiveSampleSize samples = n / (1 + 2*(G.sum rho))
  where n = fromIntegral (V.size vec)
        vec = V.fromList samples
        cov = autocovariance vec
        rho = G.map (/ G.head cov) cov

meanVariance :: Fractional a => [a] -> (a,a)
meanVariance lst = (av,sigma2)
  where
    n   = fromIntegral $ length lst
    av  = sum lst / n
    sigma2 = (foldr (\x acc -> sqr (x - av) + acc) 0 lst) / (n - 1)
    sqr x = x * x
