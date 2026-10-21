package V1;

import android.graphics.Path;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3836a = new ArrayList();

    public void apply(Path path) {
        ArrayList arrayList = this.f3836a;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            f2.h.applyTrimPathIfNeeded(path, (t) arrayList.get(size));
        }
    }
}
