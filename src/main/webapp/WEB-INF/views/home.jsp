<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<di id="view-layout"></di>
<script>
    var viewport = new Ext.Viewport({
        layout: 'border',
        renderTo: 'view-layout',
        items: [
            {
                region: 'west',
                id: 'west-panel',
                layout:'column',
                split: true,
                width: 285,
                minSize: 175,
                maxSize: 400,
                items: [
                    {
                        html: '<div id="calendar"></div><div id="information"></div>',
                    }
                ]
            },{
                region: 'center',
                id: 'center-panel',
                collapsible: true,
                layout:'column',
                autoScroll:true,
                items: [
                    {
                        columnWidth:.333,
                        baseCls:'x-plain',
                        bodyStyle:'padding:5px 0 5px 5px',
                        items:[{
                            title: 'Sale Request',
                            html: ''
                        }]
                    },{
                        columnWidth:.333,
                        baseCls:'x-plain',
                        bodyStyle:'padding:5px 0 5px 5px',
                        items:[{
                            title: 'Engineer Approve',
                            html: ''
                        }]
                    },{
                        columnWidth:.333,
                        baseCls:'x-plain',
                        bodyStyle:'padding:5px',
                        items:[{
                            title: 'Waiting Check First Shot',
                            html: ''
                        }]
                    }
                ]
            },{
                region: 'south',
                id: 'south-panel',
                collapsible: true,
                split: true,
                height: 100,
                minSize: 100,
                maxSize: 200,
                title: 'South'
            }
        ]
    });

    $("#calendar").datepicker({ dateFormat: 'dd/mm/yy', inline: true });

    var simple = new Ext.FormPanel({
        labelWidth: 70, // label settings here cascade unless overridden
        frame:true,
        title: 'Information User',
        bodyStyle:'padding:5px 5px 0',
        width: 285,
        defaultType: 'textfield',
        renderTo: 'information',
        items: [{
            fieldLabel: 'First Name',
            name: 'first',
            allowBlank:false,
            anchor:'95%',
            value: 'Apichat',
            readOnly: true,
            style: 'background: #ecf0f1;'
        },{
            fieldLabel: 'Last Name',
            name: 'last',
            anchor:'95%',
            value: 'Eakwongsa',
            readOnly: true,
            style: 'background: #ecf0f1;'
        },{
            fieldLabel: 'Department',
            name: 'department',
            anchor:'95%',
            value: 'Quality Assurance',
            readOnly: true,
            style: 'background: #ecf0f1;'
        }, {
            fieldLabel: 'Email',
            name: 'email',
            vtype:'email',
            anchor:'95%',
            value: 'apichate@foamtecintl.com',
            readOnly: true,
            style: 'background: #ecf0f1;'
        }]
    });
</script>