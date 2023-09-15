actor {
  public query func solveQuadratic(a: Float, b: Float, c: Float) : async Text {
    if (a == 0) {
      return "El coeficiente 'a' no puede ser cero. La ecuación no es cuadrática.";
    }

    // Calcular la discriminante
    let discriminant = b * b - 4 * a * c;

    if (discriminant < 0) {
      return "La ecuación no tiene soluciones reales.";
    } else if (discriminant == 0) {
      let x = -b / (2 * a);
      return "La solución única es x = " # Float.toText(x);
    } else {
      // Calcular la raíz cuadrada de la discriminante
      let discriminantSqrt = Float.sqrt(discriminant);
      let x1 = (-b + discriminantSqrt) / (2 * a);
      let x2 = (-b - discriminantSqrt) / (2 * a);
      return "Las soluciones son x1 = " # Float.toText(x1) # " y x2 = " # Float.toText(x2);
    }
  };
};

