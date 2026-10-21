package W0;

import A.i;
import P3.v;
import android.graphics.Color;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final String f4105a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4106b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f4107c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f4108d;

    /* renamed from: e, reason: collision with root package name */
    public final float f4109e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4110f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4111g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f4112h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f4113i;

    /* renamed from: j, reason: collision with root package name */
    public final int f4114j;

    public e(String str, int i2, Integer num, Integer num2, float f3, boolean z6, boolean z7, boolean z8, boolean z9, int i7) {
        this.f4105a = str;
        this.f4106b = i2;
        this.f4107c = num;
        this.f4108d = num2;
        this.f4109e = f3;
        this.f4110f = z6;
        this.f4111g = z7;
        this.f4112h = z8;
        this.f4113i = z9;
        this.f4114j = i7;
    }

    public static int a(String str) {
        boolean z6;
        try {
            int parseInt = Integer.parseInt(str.trim());
            switch (parseInt) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                case 8:
                case 9:
                    z6 = true;
                    break;
                default:
                    z6 = false;
                    break;
            }
            if (z6) {
                return parseInt;
            }
        } catch (NumberFormatException unused) {
        }
        i.z("Ignoring unknown alignment: ", str, "SsaStyle");
        return -1;
    }

    public static boolean b(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e3) {
            Log.w("SsaStyle", "Failed to parse boolean value: '" + str + "'", e3);
            return false;
        }
    }

    public static e fromStyleLine(String str, c cVar) {
        e eVar;
        v.checkArgument(str.startsWith("Style:"));
        String[] split = TextUtils.split(str.substring(6), ",");
        int length = split.length;
        int i2 = cVar.f4098k;
        if (length != i2) {
            Log.w("SsaStyle", Util.formatInvariant("Skipping malformed 'Style:' line (expected %s values, found %s): '%s'", Integer.valueOf(i2), Integer.valueOf(split.length), str));
            return null;
        }
        try {
            String trim = split[cVar.f4088a].trim();
            int i7 = cVar.f4089b;
            int i8 = -1;
            int a7 = i7 != -1 ? a(split[i7].trim()) : -1;
            int i9 = cVar.f4090c;
            Integer parseColor = i9 != -1 ? parseColor(split[i9].trim()) : null;
            int i10 = cVar.f4091d;
            Integer parseColor2 = i10 != -1 ? parseColor(split[i10].trim()) : null;
            int i11 = cVar.f4092e;
            float f3 = -3.4028235E38f;
            if (i11 != -1) {
                String trim2 = split[i11].trim();
                try {
                    try {
                        f3 = Float.parseFloat(trim2);
                    } catch (NumberFormatException e3) {
                        eVar = null;
                        Log.w("SsaStyle", "Failed to parse font size: '" + trim2 + "'", e3);
                    }
                } catch (RuntimeException e7) {
                    e = e7;
                    Log.w("SsaStyle", "Skipping malformed 'Style:' line: '" + str + "'", e);
                    return eVar;
                }
            }
            eVar = null;
            int i12 = cVar.f4093f;
            boolean z6 = i12 != -1 && b(split[i12].trim());
            int i13 = cVar.f4094g;
            boolean z7 = i13 != -1 && b(split[i13].trim());
            int i14 = cVar.f4095h;
            boolean z8 = i14 != -1 && b(split[i14].trim());
            int i15 = cVar.f4096i;
            boolean z9 = i15 != -1 && b(split[i15].trim());
            int i16 = cVar.f4097j;
            if (i16 != -1) {
                String trim3 = split[i16].trim();
                try {
                    int parseInt = Integer.parseInt(trim3.trim());
                    if (parseInt == 1 || parseInt == 3) {
                        i8 = parseInt;
                    }
                } catch (NumberFormatException unused) {
                }
                Log.w("SsaStyle", "Ignoring unknown BorderStyle: " + trim3);
            }
            return new e(trim, a7, parseColor, parseColor2, f3, z6, z7, z8, z9, i8);
        } catch (RuntimeException e8) {
            e = e8;
            eVar = null;
        }
    }

    public static Integer parseColor(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            v.checkArgument(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(com.google.common.primitives.a.checkedCast(((parseLong >> 24) & 255) ^ 255), com.google.common.primitives.a.checkedCast(parseLong & 255), com.google.common.primitives.a.checkedCast((parseLong >> 8) & 255), com.google.common.primitives.a.checkedCast((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e3) {
            Log.w("SsaStyle", "Failed to parse color expression: '" + str + "'", e3);
            return null;
        }
    }
}
