package u2;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.util.Log;
import java.io.IOException;
import n2.InterfaceC1391M;
import o2.C1431e;
import t2.C1651c;

/* renamed from: u2.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1677d implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1431e f20286a = new C1431e();

    @Override // l2.r
    public /* bridge */ /* synthetic */ InterfaceC1391M decode(Object obj, int i2, int i7, l2.q qVar) throws IOException {
        return decode(com.google.firebase.crashlytics.internal.common.a.f(obj), i2, i7, qVar);
    }

    @Override // l2.r
    public /* bridge */ /* synthetic */ boolean handles(Object obj, l2.q qVar) throws IOException {
        return handles(com.google.firebase.crashlytics.internal.common.a.f(obj), qVar);
    }

    public InterfaceC1391M decode(ImageDecoder.Source source, int i2, int i7, l2.q qVar) throws IOException {
        Bitmap decodeBitmap;
        decodeBitmap = ImageDecoder.decodeBitmap(source, new C1651c(i2, i7, qVar));
        if (Log.isLoggable("BitmapImageDecoder", 2)) {
            Log.v("BitmapImageDecoder", "Decoded [" + decodeBitmap.getWidth() + "x" + decodeBitmap.getHeight() + "] for [" + i2 + "x" + i7 + "]");
        }
        return new C1678e(decodeBitmap, this.f20286a);
    }

    public boolean handles(ImageDecoder.Source source, l2.q qVar) throws IOException {
        return true;
    }
}
