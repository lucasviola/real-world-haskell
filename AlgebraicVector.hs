data PlanoCartesiano2D = PlanoCartesiano2D CoordenadaX CoordenadaY
						 deriving (Eq, Show)

data Polar2D = Polar2D Angulo Distancia deriving (Eq, Show)

type CoordenadaX = Double
type CoordenadaY = Double
type Angulo = Double
type Distancia = Double