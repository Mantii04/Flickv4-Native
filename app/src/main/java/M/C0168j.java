package M;

import android.content.ClipData;
import android.view.ContentInfo;

/* renamed from: M.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0168j implements InterfaceC0170k {

    /* renamed from: a, reason: collision with root package name */
    public final ContentInfo f2038a;

    public C0168j(ContentInfo contentInfo) {
        this.f2038a = C3.j.j(L.h.checkNotNull(contentInfo));
    }

    @Override // M.InterfaceC0170k
    public ClipData getClip() {
        ClipData clip;
        clip = this.f2038a.getClip();
        return clip;
    }

    @Override // M.InterfaceC0170k
    public int getFlags() {
        int flags;
        flags = this.f2038a.getFlags();
        return flags;
    }

    @Override // M.InterfaceC0170k
    public int getSource() {
        int source;
        source = this.f2038a.getSource();
        return source;
    }

    @Override // M.InterfaceC0170k
    public ContentInfo getWrapped() {
        return this.f2038a;
    }

    public String toString() {
        return "ContentInfoCompat{" + this.f2038a + "}";
    }
}
