package androidx.core.view;

import M.C0194w0;
import M.C0196x0;
import O5.d;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class ViewGroupKt {
    public static final d getChildren(ViewGroup viewGroup) {
        return new C0194w0(viewGroup);
    }

    public static final d getDescendants(ViewGroup viewGroup) {
        return new a(viewGroup);
    }

    public static final Iterator<View> iterator(ViewGroup viewGroup) {
        return new C0196x0(viewGroup);
    }
}
