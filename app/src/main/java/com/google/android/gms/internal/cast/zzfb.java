package com.google.android.gms.internal.cast;

import A.i;
import b.c;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class zzfb {
    public static String zza(String str) {
        int i2 = zzey.zza;
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String zzb(String str, Object... objArr) {
        int length;
        int length2;
        int indexOf;
        String m7;
        int i2 = 0;
        int i7 = 0;
        while (true) {
            length = objArr.length;
            if (i7 >= length) {
                break;
            }
            Object obj = objArr[i7];
            if (obj == null) {
                m7 = "null";
            } else {
                try {
                    m7 = obj.toString();
                } catch (Exception e3) {
                    String C6 = i.C(obj.getClass().getName(), "@", Integer.toHexString(System.identityHashCode(obj)));
                    Logger.getLogger("com.google.common.base.Strings").logp(Level.WARNING, "com.google.common.base.Strings", "lenientToString", "Exception during lenientFormat for ".concat(C6), (Throwable) e3);
                    m7 = c.m("<", C6, " threw ", e3.getClass().getName(), ">");
                }
            }
            objArr[i7] = m7;
            i7++;
        }
        StringBuilder sb = new StringBuilder(str.length() + (length * 16));
        int i8 = 0;
        while (true) {
            length2 = objArr.length;
            if (i2 >= length2 || (indexOf = str.indexOf("%s", i8)) == -1) {
                break;
            }
            sb.append((CharSequence) str, i8, indexOf);
            sb.append(objArr[i2]);
            i2++;
            i8 = indexOf + 2;
        }
        sb.append((CharSequence) str, i8, str.length());
        if (i2 < length2) {
            sb.append(" [");
            sb.append(objArr[i2]);
            for (int i9 = i2 + 1; i9 < objArr.length; i9++) {
                sb.append(", ");
                sb.append(objArr[i9]);
            }
            sb.append(']');
        }
        return sb.toString();
    }
}
