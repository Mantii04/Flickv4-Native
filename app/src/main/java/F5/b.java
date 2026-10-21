package F5;

import V3.r;
import java.io.File;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public abstract class b extends r {
    public static String getExtension(File file) {
        j.checkNotNullParameter(file, "<this>");
        String name = file.getName();
        j.checkNotNullExpressionValue(name, "getName(...)");
        return StringsKt__StringsKt.substringAfterLast(name, ClassUtils.PACKAGE_SEPARATOR_CHAR, "");
    }
}
