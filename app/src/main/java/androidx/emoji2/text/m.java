package androidx.emoji2.text;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class m implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f5995b;

    /* renamed from: e, reason: collision with root package name */
    public final Throwable f5996e;

    /* renamed from: f, reason: collision with root package name */
    public final int f5997f;

    public m(List list, int i2, Throwable th) {
        L.h.checkNotNull(list, "initCallbacks cannot be null");
        this.f5995b = new ArrayList(list);
        this.f5997f = i2;
        this.f5996e = th;
    }

    @Override // java.lang.Runnable
    public void run() {
        ArrayList arrayList = this.f5995b;
        int size = arrayList.size();
        int i2 = 0;
        if (this.f5997f != 1) {
            while (i2 < size) {
                ((l) arrayList.get(i2)).onFailed(this.f5996e);
                i2++;
            }
        } else {
            while (i2 < size) {
                ((l) arrayList.get(i2)).onInitialized();
                i2++;
            }
        }
    }
}
