package p2;

import android.annotation.SuppressLint;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class k extends G2.o implements m {

    /* renamed from: d, reason: collision with root package name */
    public l f19462d;

    public k(long j7) {
        super(j7);
    }

    public /* bridge */ /* synthetic */ InterfaceC1391M put(l2.m mVar, InterfaceC1391M interfaceC1391M) {
        return (InterfaceC1391M) super.put((Object) mVar, (Object) interfaceC1391M);
    }

    public /* bridge */ /* synthetic */ InterfaceC1391M remove(l2.m mVar) {
        return (InterfaceC1391M) super.remove((Object) mVar);
    }

    public void setResourceRemovedListener(l lVar) {
        this.f19462d = lVar;
    }

    @SuppressLint({"InlinedApi"})
    public void trimMemory(int i2) {
        if (i2 >= 40) {
            clearMemory();
        } else if (i2 >= 20 || i2 == 15) {
            trimToSize(getMaxSize() / 2);
        }
    }

    @Override // G2.o
    public int getSize(InterfaceC1391M interfaceC1391M) {
        return interfaceC1391M == null ? super.getSize((Object) null) : interfaceC1391M.getSize();
    }

    @Override // G2.o
    public void onItemEvicted(l2.m mVar, InterfaceC1391M interfaceC1391M) {
        l lVar = this.f19462d;
        if (lVar == null || interfaceC1391M == null) {
            return;
        }
        ((com.bumptech.glide.load.engine.b) lVar).onResourceRemoved(interfaceC1391M);
    }
}
