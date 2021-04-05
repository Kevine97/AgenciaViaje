import Sequelize from "sequelize";
import db from "../config/db.js";

export const Descuento = db.define("descuentos", {
    idDescuento: {
    type: Sequelize.NUMBER,
    primaryKey: true,
  },
  promocion: {
    type: Sequelize.STRING,
  },
  titulo: {
    type: Sequelize.STRING,
  },
  fecha: {
    type: Sequelize.STRING,
  },
  precio: {
    type: Sequelize.STRING,
  },
});
