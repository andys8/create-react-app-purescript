module Counter where

import Prelude
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (ReactComponent, reactComponent, useState, (/\))
import React.Basic.Hooks as React

mkCounter :: ReactComponent {}
mkCounter = unsafePerformEffect counter

counter :: Effect (ReactComponent {})
counter = do
  reactComponent "Counter" \_ -> React.do
    count /\ setCount <- useState 0
    let
      handleClick = handler_ <<< setCount
    pure
      $ R.div_
          [ R.button { onClick: handleClick (_ - 1), children: [ R.text "-" ] }
          , R.div_ [ R.text (show count) ]
          , R.button { onClick: handleClick (_ + 1), children: [ R.text "+" ] }
          ]
