package g1;

import android.graphics.Bitmap;
import android.util.SparseBooleanArray;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.ArrayList;

/* renamed from: g1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0945e {

    /* renamed from: a, reason: collision with root package name */
    public final Bitmap f16411a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f16412b;

    /* renamed from: c, reason: collision with root package name */
    public int f16413c;

    /* renamed from: d, reason: collision with root package name */
    public final int f16414d;

    /* renamed from: e, reason: collision with root package name */
    public final int f16415e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f16416f;

    public C0945e(Bitmap bitmap) {
        ArrayList arrayList = new ArrayList();
        this.f16412b = arrayList;
        this.f16413c = 16;
        this.f16414d = 12544;
        this.f16415e = -1;
        ArrayList arrayList2 = new ArrayList();
        this.f16416f = arrayList2;
        if (bitmap == null || bitmap.isRecycled()) {
            throw new IllegalArgumentException("Bitmap is not valid");
        }
        arrayList2.add(g.f16426e);
        this.f16411a = bitmap;
        arrayList.add(h.f16431d);
        arrayList.add(h.f16432e);
        arrayList.add(h.f16433f);
        arrayList.add(h.f16434g);
        arrayList.add(h.f16435h);
        arrayList.add(h.f16436i);
    }

    public g generate() {
        int max;
        float f3;
        Bitmap bitmap = this.f16411a;
        if (bitmap == null) {
            throw new AssertionError();
        }
        int i2 = this.f16414d;
        double d7 = -1.0d;
        if (i2 > 0) {
            int height = bitmap.getHeight() * bitmap.getWidth();
            if (height > i2) {
                d7 = Math.sqrt(i2 / height);
            }
        } else {
            int i7 = this.f16415e;
            if (i7 > 0 && (max = Math.max(bitmap.getWidth(), bitmap.getHeight())) > i7) {
                d7 = i7 / max;
            }
        }
        int i8 = 0;
        Bitmap createScaledBitmap = d7 <= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * d7), (int) Math.ceil(bitmap.getHeight() * d7), false);
        int width = createScaledBitmap.getWidth();
        int height2 = createScaledBitmap.getHeight();
        int[] iArr = new int[width * height2];
        createScaledBitmap.getPixels(iArr, 0, width, 0, 0, width, height2);
        int i9 = this.f16413c;
        ArrayList arrayList = this.f16416f;
        C0943c c0943c = new C0943c(iArr, i9, arrayList.isEmpty() ? null : (C0944d[]) arrayList.toArray(new C0944d[arrayList.size()]));
        if (createScaledBitmap != bitmap) {
            createScaledBitmap.recycle();
        }
        ArrayList arrayList2 = c0943c.f16408c;
        ArrayList arrayList3 = this.f16412b;
        g gVar = new g(arrayList2, arrayList3);
        int size = arrayList3.size();
        int i10 = 0;
        while (true) {
            SparseBooleanArray sparseBooleanArray = gVar.f16429c;
            if (i10 >= size) {
                sparseBooleanArray.clear();
                return gVar;
            }
            h hVar = (h) arrayList3.get(i10);
            float[] fArr = hVar.f16439c;
            int length = fArr.length;
            float f7 = 0.0f;
            float f8 = 0.0f;
            for (int i11 = i8; i11 < length; i11++) {
                float f9 = fArr[i11];
                if (f9 > 0.0f) {
                    f8 += f9;
                }
            }
            if (f8 != 0.0f) {
                int length2 = fArr.length;
                for (int i12 = i8; i12 < length2; i12++) {
                    float f10 = fArr[i12];
                    if (f10 > 0.0f) {
                        fArr[i12] = f10 / f8;
                    }
                }
            }
            p.g gVar2 = gVar.f16428b;
            ArrayList arrayList4 = gVar.f16427a;
            int size2 = arrayList4.size();
            int i13 = i8;
            float f11 = 0.0f;
            C0946f c0946f = null;
            while (i13 < size2) {
                C0946f c0946f2 = (C0946f) arrayList4.get(i13);
                float[] hsl = c0946f2.getHsl();
                if (hsl[1] < hVar.getMinimumSaturation() || hsl[1] > hVar.getMaximumSaturation() || hsl[2] < hVar.getMinimumLightness() || hsl[2] > hVar.getMaximumLightness() || sparseBooleanArray.get(c0946f2.getRgb())) {
                    f3 = f7;
                } else {
                    float[] hsl2 = c0946f2.getHsl();
                    f3 = f7;
                    C0946f c0946f3 = gVar.f16430d;
                    float abs = (hVar.getSaturationWeight() > f3 ? (1.0f - Math.abs(hsl2[1] - hVar.getTargetSaturation())) * hVar.getSaturationWeight() : f3) + (hVar.getLightnessWeight() > f3 ? (1.0f - Math.abs(hsl2[2] - hVar.getTargetLightness())) * hVar.getLightnessWeight() : f3) + (hVar.getPopulationWeight() > f3 ? (c0946f2.getPopulation() / (c0946f3 != null ? c0946f3.getPopulation() : 1)) * hVar.getPopulationWeight() : f3);
                    if (c0946f == null || abs > f11) {
                        f11 = abs;
                        c0946f = c0946f2;
                    }
                }
                i13++;
                f7 = f3;
            }
            if (c0946f != null && hVar.isExclusive()) {
                sparseBooleanArray.append(c0946f.getRgb(), true);
            }
            gVar2.put(hVar, c0946f);
            i10++;
            i8 = 0;
        }
    }

    public C0945e maximumColorCount(int i2) {
        this.f16413c = i2;
        return this;
    }
}
