module Counter where

import Prelude
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (ReactComponent, reactComponent, useState, (/\))
import React.Basic.Hooks as React

counter :: ReactComponent {}
counter = unsafePerformEffect mkCounter

mkCounter :: Effect (ReactComponent {})
mkCounter = do
  reactComponent "Counter" \_ -> React.do
    count /\ updateCount <- useState 0
    pure $ R.div_
      [ R.button { onClick: handler_ $ updateCount (_ - 1), children: [ R.text "-" ] }
      , R.div_ [ R.text (show count) ]
      , R.button { onClick: handler_ $ updateCount (_ + 1), children: [ R.text "+" ] }
      ]
