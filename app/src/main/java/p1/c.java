package p1;

import android.annotation.SuppressLint;
import kotlin.text.StringsKt__StringsKt;

/* loaded from: classes.dex */
public final class c {
    public c(kotlin.jvm.internal.g gVar) {
    }

    @SuppressLint({"SyntheticAccessor"})
    public final boolean defaultValueEquals(String current, String str) {
        kotlin.jvm.internal.j.checkNotNullParameter(current, "current");
        if (kotlin.jvm.internal.j.areEqual(current, str)) {
            return true;
        }
        if (current.length() != 0) {
            int i2 = 0;
            int i7 = 0;
            int i8 = 0;
            while (true) {
                if (i2 < current.length()) {
                    char charAt = current.charAt(i2);
                    int i9 = i8 + 1;
                    if (i8 == 0 && charAt != '(') {
                        break;
                    }
                    if (charAt != '(') {
                        if (charAt == ')' && i7 - 1 == 0 && i8 != current.length() - 1) {
                            break;
                        }
                    } else {
                        i7++;
                    }
                    i2++;
                    i8 = i9;
                } else if (i7 == 0) {
                    String substring = current.substring(1, current.length() - 1);
                    kotlin.jvm.internal.j.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    return kotlin.jvm.internal.j.areEqual(StringsKt__StringsKt.trim(substring).toString(), str);
                }
            }
        }
        return false;
    }
}
