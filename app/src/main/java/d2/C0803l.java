package d2;

import a2.C0382c;
import android.graphics.Color;
import com.airbnb.lottie.parser.moshi.JsonReader$Token;
import java.io.IOException;
import java.util.ArrayList;

/* renamed from: d2.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0803l implements InterfaceC0791H {

    /* renamed from: a, reason: collision with root package name */
    public int f13555a;

    public C0803l(int i2) {
        this.f13555a = i2;
    }

    @Override // d2.InterfaceC0791H
    public C0382c parse(com.airbnb.lottie.parser.moshi.a aVar, float f3) throws IOException {
        double d7;
        ArrayList arrayList = new ArrayList();
        boolean z6 = aVar.peek() == JsonReader$Token.f9062b;
        if (z6) {
            aVar.beginArray();
        }
        while (aVar.hasNext()) {
            arrayList.add(Float.valueOf((float) aVar.nextDouble()));
        }
        if (z6) {
            aVar.endArray();
        }
        if (this.f13555a == -1) {
            this.f13555a = arrayList.size() / 4;
        }
        int i2 = this.f13555a;
        float[] fArr = new float[i2];
        int[] iArr = new int[i2];
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < this.f13555a * 4; i9++) {
            int i10 = i9 / 4;
            double floatValue = ((Float) arrayList.get(i9)).floatValue();
            int i11 = i9 % 4;
            if (i11 == 0) {
                fArr[i10] = (float) floatValue;
            } else if (i11 == 1) {
                i7 = (int) (floatValue * 255.0d);
            } else if (i11 == 2) {
                i8 = (int) (floatValue * 255.0d);
            } else if (i11 == 3) {
                iArr[i10] = Color.argb(255, i7, i8, (int) (floatValue * 255.0d));
            }
        }
        C0382c c0382c = new C0382c(fArr, iArr);
        int i12 = this.f13555a * 4;
        if (arrayList.size() > i12) {
            int size = (arrayList.size() - i12) / 2;
            double[] dArr = new double[size];
            double[] dArr2 = new double[size];
            int i13 = 0;
            while (i12 < arrayList.size()) {
                if (i12 % 2 == 0) {
                    dArr[i13] = ((Float) arrayList.get(i12)).floatValue();
                } else {
                    dArr2[i13] = ((Float) arrayList.get(i12)).floatValue();
                    i13++;
                }
                i12++;
            }
            for (int i14 = 0; i14 < c0382c.getSize(); i14++) {
                int i15 = c0382c.getColors()[i14];
                double d8 = c0382c.getPositions()[i14];
                int i16 = 1;
                while (true) {
                    if (i16 >= size) {
                        d7 = dArr2[size - 1];
                        break;
                    }
                    int i17 = i16 - 1;
                    double d9 = dArr[i17];
                    double d10 = dArr[i16];
                    if (d10 >= d8) {
                        d7 = f2.g.lerp(dArr2[i17], dArr2[i16], (d8 - d9) / (d10 - d9));
                        break;
                    }
                    i16++;
                }
                c0382c.getColors()[i14] = Color.argb((int) (d7 * 255.0d), Color.red(i15), Color.green(i15), Color.blue(i15));
            }
        }
        return c0382c;
    }
}
