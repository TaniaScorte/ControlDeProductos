﻿namespace ControlProductos
{
    partial class MenuPrincipal
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(MenuPrincipal));
            this.btnadminproductos = new System.Windows.Forms.Button();
            this.btnadminfamilias = new System.Windows.Forms.Button();
            this.btnadminrubros = new System.Windows.Forms.Button();
            this.btnadminproveedores = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btnadminproductos
            // 
            this.btnadminproductos.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnadminproductos.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnadminproductos.Location = new System.Drawing.Point(41, 44);
            this.btnadminproductos.Name = "btnadminproductos";
            this.btnadminproductos.Size = new System.Drawing.Size(289, 115);
            this.btnadminproductos.TabIndex = 0;
            this.btnadminproductos.Text = "Administrar Productos";
            this.btnadminproductos.UseVisualStyleBackColor = true;
            // 
            // btnadminfamilias
            // 
            this.btnadminfamilias.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnadminfamilias.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnadminfamilias.Location = new System.Drawing.Point(379, 44);
            this.btnadminfamilias.Name = "btnadminfamilias";
            this.btnadminfamilias.Size = new System.Drawing.Size(289, 115);
            this.btnadminfamilias.TabIndex = 1;
            this.btnadminfamilias.Text = "Administrar Familias";
            this.btnadminfamilias.UseVisualStyleBackColor = true;
            // 
            // btnadminrubros
            // 
            this.btnadminrubros.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnadminrubros.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnadminrubros.Location = new System.Drawing.Point(41, 199);
            this.btnadminrubros.Name = "btnadminrubros";
            this.btnadminrubros.Size = new System.Drawing.Size(289, 115);
            this.btnadminrubros.TabIndex = 2;
            this.btnadminrubros.Text = "Administrar Rubros";
            this.btnadminrubros.UseVisualStyleBackColor = true;
            // 
            // btnadminproveedores
            // 
            this.btnadminproveedores.Font = new System.Drawing.Font("Century Gothic", 11.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnadminproveedores.ForeColor = System.Drawing.SystemColors.ActiveCaptionText;
            this.btnadminproveedores.Location = new System.Drawing.Point(379, 199);
            this.btnadminproveedores.Name = "btnadminproveedores";
            this.btnadminproveedores.Size = new System.Drawing.Size(289, 115);
            this.btnadminproveedores.TabIndex = 3;
            this.btnadminproveedores.Text = "Administrar Proveedores";
            this.btnadminproveedores.UseVisualStyleBackColor = true;
            // 
            // MenuPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.CornflowerBlue;
            this.ClientSize = new System.Drawing.Size(724, 347);
            this.Controls.Add(this.btnadminproveedores);
            this.Controls.Add(this.btnadminrubros);
            this.Controls.Add(this.btnadminfamilias);
            this.Controls.Add(this.btnadminproductos);
            this.Icon = ((System.Drawing.Icon)(resources.GetObject("$this.Icon")));
            this.Name = "MenuPrincipal";
            this.Text = "Menu Principal";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnadminproductos;
        private System.Windows.Forms.Button btnadminfamilias;
        private System.Windows.Forms.Button btnadminrubros;
        private System.Windows.Forms.Button btnadminproveedores;
    }
}