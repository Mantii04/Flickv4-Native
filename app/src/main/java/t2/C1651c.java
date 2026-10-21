package t2;

import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.PreferredColorSpace;
import l2.p;
import l2.q;
import u2.AbstractC1693u;
import u2.C1673D;
import u2.C1696x;

/* renamed from: t2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1651c implements ImageDecoder$OnHeaderDecodedListener {

    /* renamed from: a, reason: collision with root package name */
    public final C1673D f20038a = C1673D.getInstance();

    /* renamed from: b, reason: collision with root package name */
    public final int f20039b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20040c;

    /* renamed from: d, reason: collision with root package name */
    public final DecodeFormat f20041d;

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC1693u f20042e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f20043f;

    /* renamed from: g, reason: collision with root package name */
    public final PreferredColorSpace f20044g;

    public C1651c(int i2, int i7, q qVar) {
        this.f20039b = i2;
        this.f20040c = i7;
        this.f20041d = (DecodeFormat) qVar.get(C1696x.f20304f);
        this.f20042e = (AbstractC1693u) qVar.get(AbstractC1693u.f20302f);
        p pVar = C1696x.f20307i;
        this.f20043f = qVar.get(pVar) != null && ((Boolean) qVar.get(pVar)).booleanValue();
        this.f20044g = (PreferredColorSpace) qVar.get(C1696x.f20305g);
    }

    public void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        Size size;
        ColorSpace colorSpace;
        ColorSpace.Named named;
        ColorSpace colorSpace2;
        ColorSpace colorSpace3;
        ColorSpace colorSpace4;
        boolean isWideGamut;
        ColorSpace.Named unused;
        if (this.f20038a.isHardwareConfigAllowed(this.f20039b, this.f20040c, this.f20043f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f20041d == DecodeFormat.f9186e) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new C1650b());
        size = imageInfo.getSize();
        int i2 = this.f20039b;
        if (i2 == Integer.MIN_VALUE) {
            i2 = size.getWidth();
        }
        int i7 = this.f20040c;
        if (i7 == Integer.MIN_VALUE) {
            i7 = size.getHeight();
        }
        float scaleFactor = this.f20042e.getScaleFactor(size.getWidth(), size.getHeight(), i2, i7);
        int round = Math.round(size.getWidth() * scaleFactor);
        int round2 = Math.round(size.getHeight() * scaleFactor);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + round + "x" + round2 + "] scaleFactor: " + scaleFactor);
        }
        imageDecoder.setTargetSize(round, round2);
        PreferredColorSpace preferredColorSpace = this.f20044g;
        if (preferredColorSpace != null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 < 28) {
                if (i8 >= 26) {
                    unused = ColorSpace.Named.SRGB;
                    colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
                    imageDecoder.setTargetColorSpace(colorSpace);
                    return;
                }
                return;
            }
            if (preferredColorSpace == PreferredColorSpace.f9194b) {
                colorSpace3 = imageInfo.getColorSpace();
                if (colorSpace3 != null) {
                    colorSpace4 = imageInfo.getColorSpace();
                    isWideGamut = colorSpace4.isWideGamut();
                    if (isWideGamut) {
                        named = ColorSpace.Named.DISPLAY_P3;
                        colorSpace2 = ColorSpace.get(named);
                        imageDecoder.setTargetColorSpace(colorSpace2);
                    }
                }
            }
            named = ColorSpace.Named.SRGB;
            colorSpace2 = ColorSpace.get(named);
            imageDecoder.setTargetColorSpace(colorSpace2);
        }
    }
}
