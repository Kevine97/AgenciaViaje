import { Viajes } from "../models/Viaje.js";
import { Testimonial } from "../models/Testimonal.js";
import { Descuento } from "../models/Descuento.js";

const PaginaInicio = async (req, res) => {
  const resultadoDB = [];

  resultadoDB.push(Viajes.findAll({ limit: 3 }));
  resultadoDB.push(Testimonial.findAll({ limit: 3 }));
  resultadoDB.push(Descuento.findOne({ where:{idDescuento:2} }));

  try {
    const resultado = await Promise.all(resultadoDB);
    res.render("inicio", {
      pagina: "Inicio",
      clase: "home",
      viajes: resultado[0],
      testimoniales: resultado[1],
      descuentos: resultado[2],
    });
  } catch (error) {
    console.log(error);
  }
};

const PaginaNosotros = (req, res) => {
  res.render("nosotros", {
    pagina: "Nosotros",
  });
};

const PaginaViajes = async (req, res) => {
  // Consultar la BD
  const viajes = await Viajes.findAll();
  res.render("viajes", {
    pagina: "Próximos Viajes",
    viajes,
  });
};

const PaginaTestimoniales = async (req, res) => {
  try {
    const testimoniales = await Testimonial.findAll();
    res.render("testimoniales", {
      pagina: "Testimoniales",
      testimoniales,
    });
  } catch (error) {
    console.log(error);
  }
};

//Muestra el viaje por su ID
const paginaDetalleViaje = async (req, res) => {
  const { id } = req.params;
  try {
    const viaje = await Viajes.findOne({ where: { slug: id } });
    res.render("viaje", {
      pagina: "Informacion del viaje ",
      viaje,
    });
  } catch (error) {
    console.log(error);
  }
};

export {
  PaginaInicio,
  PaginaNosotros,
  PaginaViajes,
  PaginaTestimoniales,
  paginaDetalleViaje,
};
