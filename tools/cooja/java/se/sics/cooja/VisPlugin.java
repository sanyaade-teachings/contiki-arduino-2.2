/*
 * Copyright (c) 2006, Swedish Institute of Computer Science.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the Institute nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE INSTITUTE AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE INSTITUTE OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $Id: VisPlugin.java,v 1.9 2009/04/03 17:03:42 fros4943 Exp $
 */

package se.sics.cooja;

import java.util.Collection;
import javax.swing.JInternalFrame;
import javax.swing.event.InternalFrameEvent;
import javax.swing.event.InternalFrameListener;
import org.jdom.Element;

import se.sics.cooja.plugins.SimControl;

/**
 * Visualized plugins can extend VisPlugin for basic visualization functionality.
 * VisPlugin extends JInternalFrame, the graphical component used by plugins.
 * VisPlugin implementations may hence directly add buttons to themselves.
 *
 * Note that plugins of this type can only be started if COOJA is visualized.
 * Hence, these plugins will not be started during nightly Contiki tests.
 *
 * @see SimControl
 * @see PluginRequiresVisualizationException
 * @author Fredrik Osterlind
 */
public abstract class VisPlugin extends JInternalFrame implements Plugin {
  private Object tag = null;

  public VisPlugin(String title, final GUI gui) {
    this(title, gui, true);
  }

  public VisPlugin(String title, final GUI gui, boolean requiresVis) {
    super(title, true, true, true, true);

    if (requiresVis && !GUI.isVisualized()) {
      throw new PluginRequiresVisualizationException();
    }

    setDefaultCloseOperation(DO_NOTHING_ON_CLOSE);

    addInternalFrameListener(new InternalFrameListener() {
      public void internalFrameClosing(InternalFrameEvent e) {
        gui.removePlugin(VisPlugin.this, true);
      }
      public void internalFrameClosed(InternalFrameEvent e) { }
      public void internalFrameOpened(InternalFrameEvent e) { }
      public void internalFrameIconified(InternalFrameEvent e) { }
      public void internalFrameDeiconified(InternalFrameEvent e) { }
      public void internalFrameActivated(InternalFrameEvent e) {
        /* Highlight mote in COOJA */
        if (VisPlugin.this.tag != null && tag instanceof Mote) {
          gui.signalMoteHighlight((Mote) tag);
        }
      }
      public void internalFrameDeactivated(InternalFrameEvent e) { }
    }
    );
  }

  public JInternalFrame getGUI() {
    return this;
  }

  public Collection<Element> getConfigXML() {
    return null;
  }

  public boolean setConfigXML(Collection<Element> configXML, boolean visAvailable) {
    return false;
  }

  public void tagWithObject(Object tag) {
    this.tag = tag;
  }

  public Object getTag() {
    return tag;
  }

  public class PluginRequiresVisualizationException extends RuntimeException {
  }
}
