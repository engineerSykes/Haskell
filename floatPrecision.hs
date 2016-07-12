module FloatPrecision where

import Numeric

formatFloatN number numDecimals = showFFloat (Just numDecimals) number ""
