import { Testimonial } from "../models/Testimonal.js";
const guardarTestimoniales = async (req, res) => {
  const { nombre, email, mensaje } = req.body;

  const errores = [];

  if (nombre.trim() === "") {
    errores.push({ mensaje: "El nombre esta vacio" });
  }
  if (email.trim() === "") {
    errores.push({ mensaje: "El correo esta vacio" });
  }
  if (mensaje.trim() === "") {
    errores.push({ mensaje: "El mensaje esta vacio" });
  }

  //Validamos si hay errores y los mandamos a la vista
  if (errores.length > 0) {
    try {
      const testimoniales = await Testimonial.findAll();
      res.render("testimoniales", {
        pagina: "Testimoniales",
        errores,
        nombre,
        email,
        mensaje,
        testimoniales,
      });
    } catch (error) {
      console.log(error);
    }
  } else {
    try {
      await Testimonial.create({
        nombre,
        correo: email,
        mensaje,
      });
      res.redirect("/testimoniales");
    } catch (error) {
      console.log(error);
    }
  }
};

export { guardarTestimoniales };
