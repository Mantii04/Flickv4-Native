package P3;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public abstract class B {
    public static String emptyToNull(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        return str;
    }

    public static String lenientFormat(String str, Object... objArr) {
        String sb;
        int indexOf;
        String valueOf = String.valueOf(str);
        int i2 = 0;
        if (objArr == null) {
            objArr = new Object[]{"(Object[])null"};
        } else {
            for (int i7 = 0; i7 < objArr.length; i7++) {
                Object obj = objArr[i7];
                if (obj == null) {
                    sb = "null";
                } else {
                    try {
                        sb = obj.toString();
                    } catch (Exception e3) {
                        String str2 = obj.getClass().getName() + '@' + Integer.toHexString(System.identityHashCode(obj));
                        Logger.getLogger("com.google.common.base.Strings").log(Level.WARNING, "Exception during lenientFormat for " + str2, (Throwable) e3);
                        StringBuilder t6 = A.i.t("<", str2, " threw ");
                        t6.append(e3.getClass().getName());
                        t6.append(">");
                        sb = t6.toString();
                    }
                }
                objArr[i7] = sb;
            }
        }
        StringBuilder sb2 = new StringBuilder((objArr.length * 16) + valueOf.length());
        int i8 = 0;
        while (i2 < objArr.length && (indexOf = valueOf.indexOf("%s", i8)) != -1) {
            sb2.append((CharSequence) valueOf, i8, indexOf);
            sb2.append(objArr[i2]);
            i8 = indexOf + 2;
            i2++;
        }
        sb2.append((CharSequence) valueOf, i8, valueOf.length());
        if (i2 < objArr.length) {
            sb2.append(" [");
            sb2.append(objArr[i2]);
            for (int i9 = i2 + 1; i9 < objArr.length; i9++) {
                sb2.append(", ");
                sb2.append(objArr[i9]);
            }
            sb2.append(']');
        }
        return sb2.toString();
    }

    public static String nullToEmpty(String str) {
        return str == null ? "" : str;
    }
}
