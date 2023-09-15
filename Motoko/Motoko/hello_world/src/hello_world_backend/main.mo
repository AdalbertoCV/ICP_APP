import Float "mo:base/Float";
actor {
  public query func solveQuadratic(a: Float, b: Float, c: Float) : async Text {
    if (a == 0) {
      return "No es una Ecuación Cuadrática";
    }
    else{
      // Calcular la discriminante
      let discriminant = (b * b) - ( 4 * a * c);
      

      if (discriminant < 0) {
        return "La ecuación no tiene soluciones reales.";
      } else if (discriminant == 0) {
        let x = -b / (2 * a);
        return "Solución única, x = " # Float.toText(x);
      } else {
        // Calcular la raíz cuadrada de la discriminante
        let discriminantSqrt = Float.sqrt(discriminant);
        let x1 = (-b + discriminantSqrt) / (2 * a);
        let x2 = (-b - discriminantSqrt) / (2 * a);
        return "Las soluciones son x1 = " # Float.toText(x1) # " y x2 = " # Float.toText(x2);
      }
    }
  };
};

