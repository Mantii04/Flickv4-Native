package x3;

import android.content.Context;
import android.view.SubMenu;
import k.C1084p;

/* renamed from: x3.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1838l extends C1084p {
    public C1838l(Context context) {
        super(context);
    }

    @Override // k.C1084p, android.view.Menu
    public SubMenu addSubMenu(int i2, int i7, int i8, CharSequence charSequence) {
        k.s sVar = (k.s) addInternal(i2, i7, i8, charSequence);
        B b7 = new B(getContext(), this, sVar);
        sVar.setSubMenu(b7);
        return b7;
    }
}
