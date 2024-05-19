sap.ui.define([
    "sap/ui/core/mvc/Controller",
    'sap/ui/core/Fragment',
    'sap/ui/model/json/JSONModel',
    'sap/m/MessageBox',
    'sap/m/MessageToast',
],
    /**
     * @param {typeof sap.ui.core.mvc.Controller} Controller
     */
    function (Controller, Fragment, JSONModel, MessageBox, MessageToast) {
        "use strict";

        return Controller.extend("com.app.smarttable.controller.View1", {
           

            onInit : function()
            {
                var oModel = new JSONModel()
                oModel.setData({
                    "po" :
                    {
                        "PURCHASE_ORDER_ID" : "",
                        "PARTNER_ID" : "",
                        "LIFECYCLE_STATUS" : "",
                        "Criticality" : "" ,
                        "OVERALL_STATUS" : "",
                        "CURRENCY_CODE" : "",
                        "GROSS_AMOUNT" : "",
                        "NET_AMOUNT":"",
                        "TAX_AMOUNT" : ""
                   
                    }
                })

                    //make the model view level
                    this.getView().setModel(oModel, "local")
                    this.localModel = oModel

                    this.getView().byId("idUpdateBtn").setEnabled(false)
                    this.getView().byId("idDeleteBtn").setEnabled(false)
                 
            },

            // This is clear dialog

            clearDialog : function()
            {
                this.localModel.setProperty("/po",{
                    "CURRENCY_CODE" : "",
                    "GROSS_AMOUNT" : "",
                    "NET_AMOUNT":"",
                    "TAX_AMOUNT" : "",
                    "PURCHASE_ORDER_ID" : "",
                    "PARTNER_ID" : "",
                    "LIFECYCLE_STATUS" : "", 
                    "OVERALL_STATUS" : "",
                    "Criticality" : ""
                })
            },

            // This is close dialog
            closeDialog : function(oEvent)
            {
                this.clearDialog()
                oEvent.getSource().getParent().getParent().close()
            },

            saveDialog : function()
            {
                //Get the payload 
                var payload = this.getView().getModel("local").getProperty("/po")

                //Get the odata model
                var oDataModel = this.getView().getModel()

                //Create the post call
                oDataModel.create("/purchaseorder", payload,{
                       //step-5 success - callback if post was fine
                       success: function()
                       {
                           MessageToast.show("Employee was created successfully")
                       },
                       //step-6 error - callback if post was having issue
                       error: function(oErr)
                       {
                           MessageBox.error("Opps! something went wrong : " + JSON.parse(oErr.responseText).error.message.value)
                       },
                })

                
            },

            oCreateBtnPopup : null,
            onCreate : function(oEvent)
            {   
                var that = this;
                
                if(!this.oCreateBtnPopup)
                {
                    Fragment.load({
                        
                        name : "com.app.smarttable.fragments.Createpopup",
                        controller : this,
                        id : "create"
                    }).then(function(oFragment){
                        that.oCreateBtnPopup = oFragment;
                        that.getView().addDependent(that.oCreateBtnPopup)
                        that.oCreateBtnPopup.setTitle("Create new Purchase Order")
                        that.oCreateBtnPopup.open();
                    })
                }

                else
                {
                    this.oCreateBtnPopup.open();
                }
            },



            onDelete : function()
            {
                
                var oDataModel = this.getView().getModel()

                var items = this.getView().byId("idTable").getSelectedItems()

                
                items.forEach(val=>{
                    var Id = val.getBindingContext().getProperty("ID")
                    console.log(Id)
                    oDataModel.remove("/purchaseorder/"+Id,{

                        success : function(data)
                        {
                            console.log("Deleted Successfully")
                        },
                        error : function(err)
                        {
                            console.log("Error")
                        }
                    })
                })

            },

            onPressRow : function(oEvent)
            {
                var numberOfItem = oEvent.getSource().getSelectedItems().length

                var enableUpdate = numberOfItem === 1
                var enableDelete = numberOfItem > 0
             
                
                this.getView().byId("idUpdateBtn").setEnabled(enableUpdate)
                this.getView().byId("idDeleteBtn").setEnabled(enableDelete)
            },

            oUpdatePopup : null,
            onUpdate : function()
            {
             
               //Get the row path which is selected by the user
                var rowPath = this.getView().byId("idTable").getSelectedItem().getBindingContextPath()

              
               var that = this; 
               if(!this.oUpdatePopup)
               {
                   Fragment.load({

                       name : "com.app.smarttable.fragments.Updatepopup",
                       controller : this,
                       id : this.getView().getId()
                   }).then(function (oFragment) {

                       that.oUpdatePopup = oFragment;
                       that.getView().addDependent(that.oUpdatePopup);
                       that.oUpdatePopup.setTitle("Purchase Details")

                       //Get the object of the form 
                        var oForm = that.getView().byId("idForm")
                        //Bind Element 
                        oForm.bindElement(rowPath)

                       //Open the fragment
                       that.oUpdatePopup.open();

                     
                    })
                    
                }
                else
                {
                   // Get the object of the form 
                    var oForm = that.getView().byId("idForm")

                    //Bind Element 
                   oForm.bindElement(rowPath)
                   this.oUpdatePopup.open();
                }
           
            },

            cancelDialog : function(oEvent)
            {   
                this.clearDialog()
                oEvent.getSource().getParent().getParent().close()
            },

            saveChangesDialog : function()
            {
               
            //Create the JavaScript object
            var UpdateData = 
            { 
                ID : this.getView().byId("idID").getValue(), 
                PURCHASE_ORDER_ID : parseInt(this.getView().byId("idPO").getValue()),
                PARTNER_ID : this.getView().byId("idPI").getValue(),
                LIFECYCLE_STATUS : this.getView().byId("idLS").getValue(),
                Criticality : parseInt(this.getView().byId("idC").getValue()),
                OVERALL_STATUS : this.getView().byId("idOC").getValue(),
                CURRENCY_CODE : this.getView().byId("idCC").getValue(),
                GROSS_AMOUNT : this.getView().byId("idGA").getValue(),
                NET_AMOUNT : this.getView().byId("idNA").getValue(),
                TAX_AMOUNT : this.getView().byId("idTA").getValue(),

            }

            var payload = UpdateData
           
        
            //step-3 get the odata model object

            var oDataModel = this.getView().getModel()

            oDataModel.update("/purchaseorder/" + payload.ID , payload,{

                success : function()
                {
                    MessageToast.show("Update is successfully")
                },
                error : function(oError)
                {
                    MessageBox.error("There is a issue in update")
                }
            })

            
            },
        });
    });
