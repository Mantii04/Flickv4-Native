package f2;

import V1.l;
import a2.k;
import android.graphics.Path;
import android.graphics.PointF;
import java.util.List;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public static final PointF f14369a = new PointF();

    public static int a(float f3, float f7) {
        int i2 = (int) f3;
        int i7 = (int) f7;
        int i8 = i2 / i7;
        int i9 = i2 % i7;
        if (!((i2 ^ i7) >= 0) && i9 != 0) {
            i8--;
        }
        return i2 - (i7 * i8);
    }

    public static PointF addPoints(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static int clamp(int i2, int i7, int i8) {
        return Math.max(i7, Math.min(i8, i2));
    }

    public static boolean contains(float f3, float f7, float f8) {
        return f3 >= f7 && f3 <= f8;
    }

    public static void getPathFromData(k kVar, Path path) {
        Path path2;
        path.reset();
        PointF initialPoint = kVar.getInitialPoint();
        path.moveTo(initialPoint.x, initialPoint.y);
        PointF pointF = f14369a;
        pointF.set(initialPoint.x, initialPoint.y);
        int i2 = 0;
        while (i2 < kVar.getCurves().size()) {
            Y1.a aVar = kVar.getCurves().get(i2);
            PointF controlPoint1 = aVar.getControlPoint1();
            PointF controlPoint2 = aVar.getControlPoint2();
            PointF vertex = aVar.getVertex();
            if (controlPoint1.equals(pointF) && controlPoint2.equals(vertex)) {
                path.lineTo(vertex.x, vertex.y);
                path2 = path;
            } else {
                path2 = path;
                path2.cubicTo(controlPoint1.x, controlPoint1.y, controlPoint2.x, controlPoint2.y, vertex.x, vertex.y);
            }
            pointF.set(vertex.x, vertex.y);
            i2++;
            path = path2;
        }
        Path path3 = path;
        if (kVar.isClosed()) {
            path3.close();
        }
    }

    public static float lerp(float f3, float f7, float f8) {
        return b.c.a(f7, f3, f8, f3);
    }

    public static void resolveKeyPath(Y1.e eVar, int i2, List<Y1.e> list, Y1.e eVar2, l lVar) {
        if (eVar.fullyResolvesTo(lVar.getName(), i2)) {
            list.add(eVar2.addKey(lVar.getName()).resolve(lVar));
        }
    }

    public static float clamp(float f3, float f7, float f8) {
        return Math.max(f7, Math.min(f8, f3));
    }

    public static double lerp(double d7, double d8, double d9) {
        return ((d8 - d7) * d9) + d7;
    }

    public static int lerp(int i2, int i7, float f3) {
        return (int) ((f3 * (i7 - i2)) + i2);
    }
}
