package M;

import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.ViewGroupKt;
import java.util.Iterator;

/* renamed from: M.w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0194w0 implements O5.d {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup f2077a;

    public C0194w0(ViewGroup viewGroup) {
        this.f2077a = viewGroup;
    }

    @Override // O5.d
    public Iterator<View> iterator() {
        return ViewGroupKt.iterator(this.f2077a);
    }
}
