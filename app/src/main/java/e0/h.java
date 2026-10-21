package e0;

import android.text.Editable;
import android.text.method.KeyListener;
import android.view.KeyEvent;
import android.view.View;

/* loaded from: classes.dex */
public final class h implements KeyListener {

    /* renamed from: a, reason: collision with root package name */
    public final KeyListener f13918a;

    /* renamed from: b, reason: collision with root package name */
    public final g f13919b;

    public h(KeyListener keyListener) {
        g gVar = new g();
        this.f13918a = keyListener;
        this.f13919b = gVar;
    }

    @Override // android.text.method.KeyListener
    public void clearMetaKeyState(View view, Editable editable, int i2) {
        this.f13918a.clearMetaKeyState(view, editable, i2);
    }

    @Override // android.text.method.KeyListener
    public int getInputType() {
        return this.f13918a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyDown(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return this.f13919b.handleKeyDown(editable, i2, keyEvent) || this.f13918a.onKeyDown(view, editable, i2, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.f13918a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public boolean onKeyUp(View view, Editable editable, int i2, KeyEvent keyEvent) {
        return this.f13918a.onKeyUp(view, editable, i2, keyEvent);
    }
}
