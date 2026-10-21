package g1;

import android.graphics.Bitmap;
import android.util.SparseBooleanArray;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: e, reason: collision with root package name */
    public static final C0944d f16426e = new C0944d();

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f16427a;

    /* renamed from: d, reason: collision with root package name */
    public final C0946f f16430d;

    /* renamed from: c, reason: collision with root package name */
    public final SparseBooleanArray f16429c = new SparseBooleanArray();

    /* renamed from: b, reason: collision with root package name */
    public final p.g f16428b = new p.g();

    public g(ArrayList arrayList, ArrayList arrayList2) {
        this.f16427a = arrayList;
        int size = arrayList.size();
        int i2 = Integer.MIN_VALUE;
        C0946f c0946f = null;
        for (int i7 = 0; i7 < size; i7++) {
            C0946f c0946f2 = (C0946f) arrayList.get(i7);
            if (c0946f2.getPopulation() > i2) {
                i2 = c0946f2.getPopulation();
                c0946f = c0946f2;
            }
        }
        this.f16430d = c0946f;
    }

    public static C0945e from(Bitmap bitmap) {
        return new C0945e(bitmap);
    }

    public int getColorForTarget(h hVar, int i2) {
        C0946f swatchForTarget = getSwatchForTarget(hVar);
        return swatchForTarget != null ? swatchForTarget.getRgb() : i2;
    }

    public int getDarkVibrantColor(int i2) {
        return getColorForTarget(h.f16433f, i2);
    }

    public C0946f getSwatchForTarget(h hVar) {
        return (C0946f) this.f16428b.get(hVar);
    }

    public List<C0946f> getSwatches() {
        return Collections.unmodifiableList(this.f16427a);
    }
}
