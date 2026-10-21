package M;

import android.content.ClipData;
import android.view.ContentInfo;
import java.util.Objects;

/* renamed from: M.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0174m {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0170k f2044a;

    public C0174m(InterfaceC0170k interfaceC0170k) {
        this.f2044a = interfaceC0170k;
    }

    public static C0174m toContentInfoCompat(ContentInfo contentInfo) {
        return new C0174m(new C0168j(contentInfo));
    }

    public ClipData getClip() {
        return this.f2044a.getClip();
    }

    public int getFlags() {
        return this.f2044a.getFlags();
    }

    public int getSource() {
        return this.f2044a.getSource();
    }

    public ContentInfo toContentInfo() {
        ContentInfo wrapped = this.f2044a.getWrapped();
        Objects.requireNonNull(wrapped);
        return C3.j.j(wrapped);
    }

    public String toString() {
        return this.f2044a.toString();
    }
}
