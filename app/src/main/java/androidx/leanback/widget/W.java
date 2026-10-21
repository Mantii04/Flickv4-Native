package androidx.leanback.widget;

import M.AbstractC0181p0;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.view.View;
import android.view.ViewParent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.io.File;
import java.io.InputStream;
import java.net.URL;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import l2.InterfaceC1222c;
import o2.InterfaceC1428b;
import o2.InterfaceC1430d;
import r2.C1544C;
import r2.C1548G;
import r2.C1550I;
import r2.C1555N;
import r2.C1569b;
import r2.C1571c;
import r2.C1574f;
import r2.C1578j;
import r2.C1580l;
import r2.C1582n;
import r2.C1587s;
import r2.C1594z;
import r2.InterfaceC1563W;
import s2.C1627a;
import s2.C1629c;
import s2.C1631e;
import s2.C1634h;
import s2.C1635i;
import s2.C1638l;
import u2.C1671B;
import u2.C1674a;
import u2.C1675b;
import u2.C1676c;
import u2.C1680g;
import u2.C1681h;
import u2.C1687n;
import u2.C1696x;
import v2.C1758a;
import x2.C1824a;
import y2.C1879a;
import y2.C1882d;
import y2.C1883e;
import z2.C1984a;
import z2.C1985b;
import z2.C1986c;
import z2.C1987d;

/* loaded from: classes.dex */
public abstract class W {
    public static void a(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList, PorterDuff.Mode mode) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (drawable != null) {
            drawable = E.c.wrap(drawable).mutate();
            if (colorStateList == null || !colorStateList.isStateful()) {
                E.c.setTintList(drawable, colorStateList);
            } else {
                int[] drawableState = textInputLayout.getDrawableState();
                int[] drawableState2 = checkableImageButton.getDrawableState();
                int length = drawableState.length;
                int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
                System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
                E.c.setTintList(drawable, ColorStateList.valueOf(colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor())));
            }
            if (mode != null) {
                E.c.setTintMode(drawable, mode);
            }
        }
        if (checkableImageButton.getDrawable() != drawable) {
            checkableImageButton.setImageDrawable(drawable);
        }
    }

    public static ImageView.ScaleType b(int i2) {
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 5 ? i2 != 6 ? ImageView.ScaleType.CENTER : ImageView.ScaleType.CENTER_INSIDE : ImageView.ScaleType.CENTER_CROP : ImageView.ScaleType.FIT_END : ImageView.ScaleType.FIT_CENTER : ImageView.ScaleType.FIT_START : ImageView.ScaleType.FIT_XY;
    }

    public static com.bumptech.glide.j c(com.bumptech.glide.c cVar, List list, A2.a aVar) {
        l2.r c1680g;
        l2.r n7;
        String str;
        com.bumptech.glide.j jVar;
        InterfaceC1430d bitmapPool = cVar.getBitmapPool();
        InterfaceC1428b arrayPool = cVar.getArrayPool();
        com.bumptech.glide.h hVar = cVar.f9130f;
        Context applicationContext = hVar.getApplicationContext();
        com.bumptech.glide.i experiments = hVar.getExperiments();
        com.bumptech.glide.j jVar2 = new com.bumptech.glide.j();
        jVar2.register(new C1687n());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 27) {
            jVar2.register(new C1671B());
        }
        Resources resources = applicationContext.getResources();
        List<InterfaceC1222c> imageHeaderParsers = jVar2.getImageHeaderParsers();
        C1879a c1879a = new C1879a(applicationContext, imageHeaderParsers, bitmapPool, arrayPool);
        l2.r parcel = com.bumptech.glide.load.resource.bitmap.b.parcel(bitmapPool);
        C1696x c1696x = new C1696x(jVar2.getImageHeaderParsers(), resources.getDisplayMetrics(), bitmapPool, arrayPool);
        if (i2 < 28 || !experiments.isEnabled(com.bumptech.glide.e.class)) {
            c1680g = new C1680g(c1696x);
            n7 = new u2.N(c1696x, arrayPool);
        } else {
            n7 = new u2.I();
            c1680g = new C1681h();
        }
        if (i2 >= 28) {
            jVar2.append("Animation", InputStream.class, Drawable.class, w2.d.streamDecoder(imageHeaderParsers, arrayPool));
            jVar2.append("Animation", ByteBuffer.class, Drawable.class, w2.d.byteBufferDecoder(imageHeaderParsers, arrayPool));
        }
        w2.h hVar2 = new w2.h(applicationContext);
        C1676c c1676c = new C1676c(arrayPool);
        C1984a c1984a = new C1984a();
        C1987d c1987d = new C1987d();
        ContentResolver contentResolver = applicationContext.getContentResolver();
        jVar2.append(ByteBuffer.class, new C1580l()).append(InputStream.class, new r2.n0(arrayPool)).append("Bitmap", ByteBuffer.class, Bitmap.class, c1680g).append("Bitmap", InputStream.class, Bitmap.class, n7);
        if (com.bumptech.glide.load.data.t.isSupported()) {
            str = "Animation";
            jVar2.append("Bitmap", ParcelFileDescriptor.class, Bitmap.class, new u2.K(c1696x));
        } else {
            str = "Animation";
        }
        jVar2.append("Bitmap", AssetFileDescriptor.class, Bitmap.class, com.bumptech.glide.load.resource.bitmap.b.asset(bitmapPool));
        String str2 = str;
        jVar2.append("Bitmap", ParcelFileDescriptor.class, Bitmap.class, parcel).append(Bitmap.class, Bitmap.class, r2.s0.getInstance()).append("Bitmap", Bitmap.class, Bitmap.class, new u2.S()).append(Bitmap.class, (l2.s) c1676c).append("BitmapDrawable", ByteBuffer.class, BitmapDrawable.class, new C1674a(resources, c1680g)).append("BitmapDrawable", InputStream.class, BitmapDrawable.class, new C1674a(resources, n7)).append("BitmapDrawable", ParcelFileDescriptor.class, BitmapDrawable.class, new C1674a(resources, parcel)).append(BitmapDrawable.class, (l2.s) new C1675b(bitmapPool, c1676c)).append(str2, InputStream.class, C1882d.class, new y2.n(imageHeaderParsers, c1879a, arrayPool)).append(str2, ByteBuffer.class, C1882d.class, c1879a).append(C1882d.class, (l2.s) new C1883e()).append(k2.b.class, k2.b.class, r2.s0.getInstance()).append("Bitmap", k2.b.class, Bitmap.class, new y2.l(bitmapPool)).append(Uri.class, Drawable.class, hVar2).append(Uri.class, Bitmap.class, new u2.L(hVar2, bitmapPool)).register(new C1758a()).append(File.class, ByteBuffer.class, new C1582n()).append(File.class, InputStream.class, new C1548G()).append(File.class, File.class, new C1824a()).append(File.class, ParcelFileDescriptor.class, new C1544C()).append(File.class, File.class, r2.s0.getInstance()).register(new com.bumptech.glide.load.data.p(arrayPool));
        if (com.bumptech.glide.load.data.t.isSupported()) {
            jVar = jVar2;
            jVar.register(new com.bumptech.glide.load.data.s());
        } else {
            jVar = jVar2;
        }
        InterfaceC1563W inputStreamFactory = C1594z.inputStreamFactory(applicationContext);
        InterfaceC1563W assetFileDescriptorFactory = C1594z.assetFileDescriptorFactory(applicationContext);
        InterfaceC1563W drawableFactory = C1594z.drawableFactory(applicationContext);
        Class cls = Integer.TYPE;
        jVar.append(cls, InputStream.class, inputStreamFactory).append(Integer.class, InputStream.class, inputStreamFactory).append(cls, AssetFileDescriptor.class, assetFileDescriptorFactory).append(Integer.class, AssetFileDescriptor.class, assetFileDescriptorFactory).append(cls, Drawable.class, drawableFactory).append(Integer.class, Drawable.class, drawableFactory).append(Uri.class, InputStream.class, r2.m0.newStreamFactory(applicationContext)).append(Uri.class, AssetFileDescriptor.class, r2.m0.newAssetFileDescriptorFactory(applicationContext));
        r2.i0 i0Var = new r2.i0(resources);
        r2.g0 g0Var = new r2.g0(resources);
        r2.h0 h0Var = new r2.h0(resources);
        jVar.append(Integer.class, Uri.class, i0Var).append(cls, Uri.class, i0Var).append(Integer.class, AssetFileDescriptor.class, g0Var).append(cls, AssetFileDescriptor.class, g0Var).append(Integer.class, InputStream.class, h0Var).append(cls, InputStream.class, h0Var);
        jVar.append(String.class, InputStream.class, new C1587s()).append(Uri.class, InputStream.class, new C1587s()).append(String.class, InputStream.class, new r2.q0()).append(String.class, ParcelFileDescriptor.class, new r2.p0()).append(String.class, AssetFileDescriptor.class, new r2.o0()).append(Uri.class, InputStream.class, new C1571c(applicationContext.getAssets())).append(Uri.class, AssetFileDescriptor.class, new C1569b(applicationContext.getAssets())).append(Uri.class, InputStream.class, new C1629c(applicationContext)).append(Uri.class, InputStream.class, new C1631e(applicationContext));
        if (i2 >= 29) {
            jVar.append(Uri.class, InputStream.class, new C1635i(applicationContext));
            jVar.append(Uri.class, ParcelFileDescriptor.class, new C1634h(applicationContext));
        }
        jVar.append(Uri.class, InputStream.class, new r2.y0(contentResolver)).append(Uri.class, ParcelFileDescriptor.class, new r2.w0(contentResolver)).append(Uri.class, AssetFileDescriptor.class, new r2.v0(contentResolver)).append(Uri.class, InputStream.class, new r2.A0()).append(URL.class, InputStream.class, new C1638l()).append(Uri.class, File.class, new C1555N(applicationContext)).append(C1550I.class, InputStream.class, new C1627a()).append(byte[].class, ByteBuffer.class, new C1574f()).append(byte[].class, InputStream.class, new C1578j()).append(Uri.class, Uri.class, r2.s0.getInstance()).append(Drawable.class, Drawable.class, r2.s0.getInstance()).append(Drawable.class, Drawable.class, new w2.i()).register(Bitmap.class, BitmapDrawable.class, new C1985b(resources)).register(Bitmap.class, byte[].class, c1984a).register(Drawable.class, byte[].class, new C1986c(bitmapPool, c1984a, c1987d)).register(C1882d.class, byte[].class, c1987d);
        l2.r byteBuffer = com.bumptech.glide.load.resource.bitmap.b.byteBuffer(bitmapPool);
        jVar.append(ByteBuffer.class, Bitmap.class, byteBuffer);
        jVar.append(ByteBuffer.class, BitmapDrawable.class, new C1674a(resources, byteBuffer));
        Iterator it = list.iterator();
        if (it.hasNext()) {
            throw b.c.g(it);
        }
        if (aVar != null) {
            aVar.registerComponents(applicationContext, cVar, jVar);
        }
        return jVar;
    }

    public static long d(double d7) {
        P3.v.checkArgument(e(d7), "not a normal value");
        int exponent = Math.getExponent(d7);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d7) & 4503599627370495L;
        return exponent == -1023 ? doubleToRawLongBits << 1 : doubleToRawLongBits | 4503599627370496L;
    }

    public static boolean e(double d7) {
        return Math.getExponent(d7) <= 1023;
    }

    public static void f(InputConnection inputConnection, EditorInfo editorInfo, TextView textView) {
        if (inputConnection == null || editorInfo.hintText != null) {
            return;
        }
        for (ViewParent parent = textView.getParent(); parent instanceof View; parent = parent.getParent()) {
        }
    }

    public static void g(TextInputLayout textInputLayout, CheckableImageButton checkableImageButton, ColorStateList colorStateList) {
        Drawable drawable = checkableImageButton.getDrawable();
        if (checkableImageButton.getDrawable() == null || colorStateList == null || !colorStateList.isStateful()) {
            return;
        }
        int[] drawableState = textInputLayout.getDrawableState();
        int[] drawableState2 = checkableImageButton.getDrawableState();
        int length = drawableState.length;
        int[] copyOf = Arrays.copyOf(drawableState, drawableState.length + drawableState2.length);
        System.arraycopy(drawableState2, 0, copyOf, length, drawableState2.length);
        int colorForState = colorStateList.getColorForState(copyOf, colorStateList.getDefaultColor());
        Drawable mutate = E.c.wrap(drawable).mutate();
        E.c.setTintList(mutate, ColorStateList.valueOf(colorForState));
        checkableImageButton.setImageDrawable(mutate);
    }

    public static void h(CheckableImageButton checkableImageButton, View.OnLongClickListener onLongClickListener) {
        boolean hasOnClickListeners = AbstractC0181p0.hasOnClickListeners(checkableImageButton);
        boolean z6 = onLongClickListener != null;
        boolean z7 = hasOnClickListeners || z6;
        checkableImageButton.setFocusable(z7);
        checkableImageButton.setClickable(hasOnClickListeners);
        checkableImageButton.setPressable(hasOnClickListeners);
        checkableImageButton.setLongClickable(z6);
        AbstractC0181p0.setImportantForAccessibility(checkableImageButton, z7 ? 1 : 2);
    }
}
