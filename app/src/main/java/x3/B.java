package x3;

import android.content.Context;
import k.C1084p;
import k.SubMenuC1068M;

/* loaded from: classes2.dex */
public final class B extends SubMenuC1068M {
    public B(Context context, C1838l c1838l, k.s sVar) {
        super(context, c1838l, sVar);
    }

    @Override // k.C1084p
    public void onItemsChanged(boolean z6) {
        super.onItemsChanged(z6);
        ((C1084p) getParentMenu()).onItemsChanged(z6);
    }
}
