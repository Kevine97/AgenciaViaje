import express from "express";
import {
  PaginaInicio,
  PaginaNosotros,
  PaginaViajes,
  PaginaTestimoniales,
  paginaDetalleViaje,
} from "../controllers/paginasController.js";

import { guardarTestimoniales } from "../controllers/testimonialController.js";

const router = express.Router();

router.get("/", PaginaInicio);
router.get("/nosotros", PaginaNosotros);
router.get("/viajes", PaginaViajes);
router.get("/viajes/:id", paginaDetalleViaje);
router.get("/testimoniales", PaginaTestimoniales);
router.post("/testimoniales", guardarTestimoniales);

export default router;
