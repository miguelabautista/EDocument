package com.novatec.edocument.client;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.event.dom.client.ClickHandler;
import com.google.gwt.user.client.ui.Button;
import com.google.gwt.user.client.ui.Label;
import com.google.gwt.user.client.ui.RootPanel;
import com.google.gwt.core.client.GWT;
import com.google.gwt.user.client.rpc.AsyncCallback;
import com.novatec.edocument.client.*;

/**
 * Entry point classes define <code>onModuleLoad()</code>.
 */
public class Prueba implements EntryPoint {
    /**
     * This is the entry point method.
     */

    final DataServiceAsync dataService = GWT
			.create(DataService.class);
			
    public void onModuleLoad() {
    	Button a = new Button("Dale");
		final Label l = new Label("Prueba");
		
		a.addClickHandler(new ClickHandler() {
			
			@Override
			public void onClick(ClickEvent event) {
			    dataService.getData(new AsyncCallback<String>() {
							public void onFailure(Throwable caught) {
								
							}

							public void onSuccess(String result) {
								  l.setText(result);
							}
						});
			  
			}
		});
		RootPanel.get().add(a);
		RootPanel.get().add(l);
    }
}
