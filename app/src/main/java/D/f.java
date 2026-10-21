package D;

import android.graphics.Path;
import android.util.Log;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public char f812a;

    /* renamed from: b, reason: collision with root package name */
    public final float[] f813b;

    public f(float[] fArr, char c7) {
        this.f812a = c7;
        this.f813b = fArr;
    }

    public static void a(Path path, float f3, float f7, float f8, float f9, float f10, float f11, float f12, boolean z6, boolean z7) {
        double d7;
        double d8;
        double radians = Math.toRadians(f12);
        double cos = Math.cos(radians);
        double sin = Math.sin(radians);
        double d9 = f3;
        double d10 = f7;
        double d11 = f10;
        double d12 = ((d10 * sin) + (d9 * cos)) / d11;
        double d13 = f11;
        double d14 = ((d10 * cos) + ((-f3) * sin)) / d13;
        double d15 = f9;
        double d16 = ((d15 * sin) + (f8 * cos)) / d11;
        double d17 = ((d15 * cos) + ((-f8) * sin)) / d13;
        double d18 = d12 - d16;
        double d19 = d14 - d17;
        double d20 = (d12 + d16) / 2.0d;
        double d21 = (d14 + d17) / 2.0d;
        double d22 = (d19 * d19) + (d18 * d18);
        if (d22 == FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            Log.w("PathParser", " Points are coincident");
            return;
        }
        double d23 = (1.0d / d22) - 0.25d;
        if (d23 < FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE) {
            Log.w("PathParser", "Points are too far apart " + d22);
            float sqrt = (float) (Math.sqrt(d22) / 1.99999d);
            a(path, f3, f7, f8, f9, f10 * sqrt, sqrt * f11, f12, z6, z7);
            return;
        }
        double sqrt2 = Math.sqrt(d23);
        double d24 = sqrt2 * d18;
        double d25 = sqrt2 * d19;
        if (z6 == z7) {
            d7 = d20 - d25;
            d8 = d21 + d24;
        } else {
            d7 = d20 + d25;
            d8 = d21 - d24;
        }
        double atan2 = Math.atan2(d14 - d8, d12 - d7);
        double atan22 = Math.atan2(d17 - d8, d16 - d7) - atan2;
        if (z7 != (atan22 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE)) {
            atan22 = atan22 > FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
        }
        double d26 = d7 * d11;
        double d27 = d8 * d13;
        double d28 = (d26 * cos) - (d27 * sin);
        double d29 = (d27 * cos) + (d26 * sin);
        int ceil = (int) Math.ceil(Math.abs((atan22 * 4.0d) / 3.141592653589793d));
        double cos2 = Math.cos(radians);
        double sin2 = Math.sin(radians);
        double cos3 = Math.cos(atan2);
        double sin3 = Math.sin(atan2);
        double d30 = -d11;
        double d31 = d30 * cos2;
        double d32 = d13 * sin2;
        double d33 = (d31 * sin3) - (d32 * cos3);
        double d34 = d30 * sin2;
        double d35 = d13 * cos2;
        double d36 = atan22 / ceil;
        double d37 = (cos3 * d35) + (sin3 * d34);
        double d38 = d9;
        double d39 = d10;
        int i2 = 0;
        double d40 = atan2;
        while (i2 < ceil) {
            double d41 = d40 + d36;
            double sin4 = Math.sin(d41);
            double cos4 = Math.cos(d41);
            int i7 = ceil;
            double d42 = (((d11 * cos2) * cos4) + d28) - (d32 * sin4);
            double d43 = (d35 * sin4) + (d11 * sin2 * cos4) + d29;
            double d44 = (d31 * sin4) - (d32 * cos4);
            double d45 = (cos4 * d35) + (sin4 * d34);
            double d46 = d41 - d40;
            double tan = Math.tan(d46 / 2.0d);
            double sqrt3 = ((Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d) * Math.sin(d46)) / 3.0d;
            path.rLineTo(0.0f, 0.0f);
            path.cubicTo((float) ((d33 * sqrt3) + d38), (float) ((d37 * sqrt3) + d39), (float) (d42 - (sqrt3 * d44)), (float) (d43 - (sqrt3 * d45)), (float) d42, (float) d43);
            i2++;
            d39 = d43;
            cos2 = cos2;
            d34 = d34;
            d40 = d41;
            d37 = d45;
            d38 = d42;
            ceil = i7;
            d33 = d44;
            d36 = d36;
        }
    }

    @Deprecated
    public static void nodesToPath(f[] fVarArr, Path path) {
        g.nodesToPath(fVarArr, path);
    }

    public void interpolatePathDataNode(f fVar, f fVar2, float f3) {
        this.f812a = fVar.f812a;
        int i2 = 0;
        while (true) {
            float[] fArr = fVar.f813b;
            if (i2 >= fArr.length) {
                return;
            }
            this.f813b[i2] = (fVar2.f813b[i2] * f3) + ((1.0f - f3) * fArr[i2]);
            i2++;
        }
    }

    public f(f fVar) {
        this.f812a = fVar.f812a;
        float[] fArr = fVar.f813b;
        this.f813b = g.a(fArr.length, fArr);
    }
}
