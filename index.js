import express from "express";
import router from "./routes/index.js";
import db from "./config/db.js";
import dotenv from "dotenv";
dotenv.config({ path: "variables.env" });

const app = express();

//Conectar a la base de datos
const conexion = async () => {
  try {
    await db.authenticate();
    console.log("Base de datos conectada");
  } catch (error) {
    console.log(error);
  }
};
//Llamamos a la funcion de conexion
conexion();

const host = process.env.HOST || "0.0.0.0";
const port = process.env.PORT || 4000;

//Habilitar public
app.set("view engine", "pug");

//Obtener el year actual
app.use((req, res, next) => {
  const year = new Date();
  res.locals.actualYear = year.getFullYear();
  res.locals.nombreSitio = "Agencia de viajes";
  return next();
});

//Agregar body parser para leer los datos del formulario
app.use(express.urlencoded({ extended: true }));

//Definir la carpeta publica
app.use(express.static("public"));

//Agregar Router
app.use("/", router);

app.listen(port, () => {
  console.log(`El servidor esta funcionando en el puerto localhost:${port} Host: ${host}`);
});
