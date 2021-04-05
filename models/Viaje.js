import Sequelize from "sequelize";
import db from "../config/db.js";

export const Viajes = db.define("viajes", {
  idViaje: {
    type: Sequelize.NUMBER,
    primaryKey: true,
  },
  titulo: {
    type: Sequelize.STRING,
  },
  precio: {
    type: Sequelize.NUMBER,
  },
  fecha_ida: {
    type: Sequelize.DATE,
  },
  fecha_vuelta: {
    type: Sequelize.DATE,
  },
  imagen: {
    type: Sequelize.STRING,
  },
  descripcion: {
    type: Sequelize.STRING,
  },
  disponibles: {
    type: Sequelize.NUMBER,
  },
  slug: {
    type: Sequelize.STRING,
  },
});
