package e0;

import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.EditText;

/* renamed from: e0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0847a {

    /* renamed from: a, reason: collision with root package name */
    public final C.k f13908a;

    public C0847a(EditText editText, boolean z6) {
        L.h.checkNotNull(editText, "editText cannot be null");
        C.k kVar = new C.k();
        kVar.f325a = editText;
        n nVar = new n(editText, z6);
        kVar.f326b = nVar;
        editText.addTextChangedListener(nVar);
        editText.setEditableFactory(C0848b.getInstance());
        this.f13908a = kVar;
    }

    public KeyListener getKeyListener(KeyListener keyListener) {
        this.f13908a.getClass();
        if (keyListener instanceof h) {
            return keyListener;
        }
        if (keyListener == null) {
            return null;
        }
        return keyListener instanceof NumberKeyListener ? keyListener : new h(keyListener);
    }

    public InputConnection onCreateInputConnection(InputConnection inputConnection, EditorInfo editorInfo) {
        if (inputConnection == null) {
            return null;
        }
        C.k kVar = this.f13908a;
        kVar.getClass();
        return inputConnection instanceof C0850d ? inputConnection : new C0850d((EditText) kVar.f325a, inputConnection, editorInfo);
    }

    public void setEnabled(boolean z6) {
        ((n) this.f13908a.f326b).setEnabled(z6);
    }
}
