package W0;

import P3.AbstractC0226a;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final int f4088a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4089b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4090c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4091d;

    /* renamed from: e, reason: collision with root package name */
    public final int f4092e;

    /* renamed from: f, reason: collision with root package name */
    public final int f4093f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4094g;

    /* renamed from: h, reason: collision with root package name */
    public final int f4095h;

    /* renamed from: i, reason: collision with root package name */
    public final int f4096i;

    /* renamed from: j, reason: collision with root package name */
    public final int f4097j;

    /* renamed from: k, reason: collision with root package name */
    public final int f4098k;

    public c(int i2, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16) {
        this.f4088a = i2;
        this.f4089b = i7;
        this.f4090c = i8;
        this.f4091d = i9;
        this.f4092e = i10;
        this.f4093f = i11;
        this.f4094g = i12;
        this.f4095h = i13;
        this.f4096i = i14;
        this.f4097j = i15;
        this.f4098k = i16;
    }

    public static c fromFormatLine(String str) {
        char c7;
        String[] split = TextUtils.split(str.substring(7), ",");
        int i2 = -1;
        int i7 = -1;
        int i8 = -1;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        int i14 = -1;
        int i15 = -1;
        for (int i16 = 0; i16 < split.length; i16++) {
            String lowerCase = AbstractC0226a.toLowerCase(split[i16].trim());
            lowerCase.getClass();
            switch (lowerCase.hashCode()) {
                case -1178781136:
                    if (lowerCase.equals("italic")) {
                        c7 = 0;
                        break;
                    }
                    c7 = 65535;
                    break;
                case -1026963764:
                    if (lowerCase.equals("underline")) {
                        c7 = 1;
                        break;
                    }
                    c7 = 65535;
                    break;
                case -192095652:
                    if (lowerCase.equals("strikeout")) {
                        c7 = 2;
                        break;
                    }
                    c7 = 65535;
                    break;
                case -70925746:
                    if (lowerCase.equals("primarycolour")) {
                        c7 = 3;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 3029637:
                    if (lowerCase.equals("bold")) {
                        c7 = 4;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 3373707:
                    if (lowerCase.equals("name")) {
                        c7 = 5;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 366554320:
                    if (lowerCase.equals("fontsize")) {
                        c7 = 6;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 767321349:
                    if (lowerCase.equals("borderstyle")) {
                        c7 = 7;
                        break;
                    }
                    c7 = 65535;
                    break;
                case 1767875043:
                    if (lowerCase.equals("alignment")) {
                        c7 = '\b';
                        break;
                    }
                    c7 = 65535;
                    break;
                case 1988365454:
                    if (lowerCase.equals("outlinecolour")) {
                        c7 = '\t';
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
                    i12 = i16;
                    break;
                case 1:
                    i13 = i16;
                    break;
                case 2:
                    i14 = i16;
                    break;
                case 3:
                    i8 = i16;
                    break;
                case 4:
                    i11 = i16;
                    break;
                case 5:
                    i2 = i16;
                    break;
                case 6:
                    i10 = i16;
                    break;
                case 7:
                    i15 = i16;
                    break;
                case '\b':
                    i7 = i16;
                    break;
                case '\t':
                    i9 = i16;
                    break;
            }
        }
        if (i2 != -1) {
            return new c(i2, i7, i8, i9, i10, i11, i12, i13, i14, i15, split.length);
        }
        return null;
    }
}
