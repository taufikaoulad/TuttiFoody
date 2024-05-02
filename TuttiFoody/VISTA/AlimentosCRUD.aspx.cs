using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TuttiFoody.DAL;

namespace TuttiFoody.VISTA
{
    public partial class AlimentosCRUDM : System.Web.UI.Page
    {
        TipoAlimentoBD tipoAlimentoBD = new TipoAlimentoBD();
        AlimentoBD alimentoBD = new AlimentoBD();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                RefreshList();
            }
        }

        private void RefreshList()
        {
            cbxTipoAlim.DataSource = tipoAlimentoBD.Select();
            cbxTipoAlim.DataTextField = "Nombre";
            cbxTipoAlim.DataValueField = "IdTipoAlimento";
            cbxTipoAlim.DataBind();
            cbxTipoAlim.Items.Insert(0, new ListItem("", null));

            listAlimentos.DataSource = alimentoBD.Select();
            listAlimentos.DataTextField = "Nombre";
            listAlimentos.DataValueField = "IdAlimento";
            listAlimentos.DataBind();
        }

        private Alimento InsertAlim()
        {
            string rutaBase = "/CONTENT/Imagenes/";
            Alimento alim = new Alimento()
            {
                Nombre = txtNombre.Text,
                Descripcion = txtDescripcion.InnerText.ToString(),
                Calorias = Convert.ToDecimal(calorias.Text),
                FKTipoAlimento = Convert.ToInt32(cbxTipoAlim.SelectedValue),
                ArchivoImagen = rutaBase + Path.GetFileName(archivoImagen.FileName)
            };

            return alim;
        }

        protected void insertar_Click(object sender, EventArgs e)
        {
            Alimento alim = InsertAlim();

            alimentoBD.Insertar(InsertAlim());

            // Guardar la imagen solo si la insercion fue exitosa
            string rutaCompleta = Server.MapPath(alim.ArchivoImagen);
            archivoImagen.SaveAs(rutaCompleta);
        }

        protected void eliminar_Click(object sender, EventArgs e)
        {
            int AlimId = Convert.ToInt32(listAlimentos.SelectedItem.Value);
            Alimento alim = (Alimento)alimentoBD.SelectById(AlimId);

            alimentoBD.Delete(alim);
            RefreshList();
        }

        protected void modificar_Click(object sender, EventArgs e)
        {
            Modify();
            alimentoBD.Update();
            RefreshList();
        }

        protected void listAlimentos_SelectedIndexChanged(object sender, EventArgs e)
        {
            int AlimId = Convert.ToInt32(listAlimentos.SelectedItem.Value);
            Alimento alim = (Alimento)alimentoBD.SelectById(AlimId);

            RellenarForm(alim);
        }

        private Alimento RellenarForm(Alimento alim)
        {
            //rellenamos el form
            txtNombre.Text = alim.Nombre;
            txtDescripcion.InnerText = alim.Descripcion;
            calorias.Text = alim.Calorias.ToString();
            cbxTipoAlim.SelectedValue = alim.FKTipoAlimento.ToString();
            // Almacenamos la ruta de la imagen en una variable de sesion
            Session["RutaImagen"] = alim.ArchivoImagen;

            return alim;
        }

        private void Modify()
        {
            string rutaBase = "/CONTENT/Imagenes/";

            int AlimId = Convert.ToInt32(listAlimentos.SelectedItem.Value);
            Alimento alim = (Alimento)alimentoBD.SelectById(AlimId);

            alim.Nombre = txtNombre.Text;
            alim.Descripcion = txtDescripcion.InnerText.ToString();
            alim.Calorias = Convert.ToDecimal(calorias.Text);
            alim.FKTipoAlimento = Convert.ToInt32(cbxTipoAlim.SelectedValue);

            if (archivoImagen.HasFile)
            {
                alim.ArchivoImagen = rutaBase + Path.GetFileName(archivoImagen.FileName);

                string rutaCompleta = Server.MapPath(alim.ArchivoImagen);
                archivoImagen.SaveAs(rutaCompleta);
            }
            else
            {
                //Conservamos la foto existentee si no se ha subido ninguna foto
                if (Session["RutaImagen"] != null)
                    alim.ArchivoImagen = Session["RutaImagen"].ToString();
            }

            // Actualizamosla session con la nueva foto
            if (archivoImagen.HasFile)
                Session["RutaImagen"] = alim.ArchivoImagen;
        }
    }
}