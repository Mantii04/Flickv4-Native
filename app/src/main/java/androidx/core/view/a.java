package androidx.core.view;

import H5.l;
import M.U;
import O5.d;
import android.view.View;
import android.view.ViewGroup;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class a implements d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f5565a;

    public a(ViewGroup viewGroup) {
        this.f5565a = viewGroup;
    }

    @Override // O5.d
    public Iterator<View> iterator() {
        return new U(ViewGroupKt.getChildren(this.f5565a).iterator(), new l() { // from class: androidx.core.view.ViewGroupKt$descendants$1$1
            @Override // H5.l
            public final Iterator<View> invoke(View view) {
                d children;
                ViewGroup viewGroup = view instanceof ViewGroup ? (ViewGroup) view : null;
                if (viewGroup == null || (children = ViewGroupKt.getChildren(viewGroup)) == null) {
                    return null;
                }
                return children.iterator();
            }
        });
    }
}
