package W0;

import P3.AbstractC0226a;
import P3.v;
import android.text.TextUtils;
import androidx.media3.common.MimeTypes;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f4075a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4076b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4077c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4078d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4079e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4080f;

    public a(int i2, int i7, int i8, int i9, int i10, int i11) {
        this.f4075a = i2;
        this.f4076b = i7;
        this.f4077c = i8;
        this.f4078d = i9;
        this.f4079e = i10;
        this.f4080f = i11;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static a fromFormatLine(String str) {
        char c7;
        v.checkArgument(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i2 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        for (int i11 = 0; i11 < split.length; i11++) {
            String lowerCase = AbstractC0226a.toLowerCase(split[i11].trim());
            lowerCase.getClass();
            switch (lowerCase.hashCode()) {
                case 100571:
                    if (lowerCase.equals("end")) {
                        c7 = 0;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 3556653:
                    if (lowerCase.equals(MimeTypes.BASE_TYPE_TEXT)) {
                        c7 = 1;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 102749521:
                    if (lowerCase.equals("layer")) {
                        c7 = 2;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 109757538:
                    if (lowerCase.equals("start")) {
                        c7 = 3;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 109780401:
                    if (lowerCase.equals("style")) {
                        c7 = 4;
                        break;
                    }
                    c7 = 65535;
                    break;
                default:
                    c7 = 65535;
                    break;
            }
            switch (c7) {
                case 0:
                    i8 = i11;
                    break;
                case 1:
                    i10 = i11;
                    break;
                case 2:
                    i2 = i11;
                    break;
                case 3:
                    i7 = i11;
                    break;
                case 4:
                    i9 = i11;
                    break;
            }
        }
        if (i7 == -1 || i8 == -1 || i10 == -1) {
            return null;
        }
        return new a(i2, i7, i8, i9, i10, split.length);
    }
}
