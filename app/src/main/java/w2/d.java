package w2;

import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.util.List;
import l2.InterfaceC1222c;
import l2.q;
import l2.r;
import o2.InterfaceC1428b;
import t2.C1651c;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final List f20674a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1428b f20675b;

    public d(List list, InterfaceC1428b interfaceC1428b) {
        this.f20674a = list;
        this.f20675b = interfaceC1428b;
    }

    public static C1777a a(ImageDecoder.Source source, int i2, int i7, q qVar) {
        Drawable decodeDrawable;
        decodeDrawable = ImageDecoder.decodeDrawable(source, new C1651c(i2, i7, qVar));
        if (com.google.firebase.crashlytics.internal.common.a.w(decodeDrawable)) {
            return new C1777a(com.google.firebase.crashlytics.internal.common.a.h(decodeDrawable));
        }
        throw new IOException("Received unexpected drawable type for animated image, failing: " + decodeDrawable);
    }

    public static r byteBufferDecoder(List<InterfaceC1222c> list, InterfaceC1428b interfaceC1428b) {
        return new b(new d(list, interfaceC1428b));
    }

    public static r streamDecoder(List<InterfaceC1222c> list, InterfaceC1428b interfaceC1428b) {
        return new c(new d(list, interfaceC1428b));
    }
}
