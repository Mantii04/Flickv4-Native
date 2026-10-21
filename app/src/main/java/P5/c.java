package P5;

import java.nio.charset.Charset;
import org.apache.commons.lang3.CharEncoding;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f2724a = new c();

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f2725b;

    /* renamed from: c, reason: collision with root package name */
    public static volatile Charset f2726c;

    /* renamed from: d, reason: collision with root package name */
    public static volatile Charset f2727d;

    static {
        Charset forName = Charset.forName("UTF-8");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(forName, "forName(...)");
        f2725b = forName;
        kotlin.jvm.internal.j.checkNotNullExpressionValue(Charset.forName("UTF-16"), "forName(...)");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(Charset.forName(CharEncoding.UTF_16BE), "forName(...)");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(Charset.forName(CharEncoding.UTF_16LE), "forName(...)");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(Charset.forName("US-ASCII"), "forName(...)");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(Charset.forName("ISO-8859-1"), "forName(...)");
    }

    public final Charset UTF32_BE() {
        Charset charset = f2727d;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32BE");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(forName, "forName(...)");
        f2727d = forName;
        return forName;
    }

    public final Charset UTF32_LE() {
        Charset charset = f2726c;
        if (charset != null) {
            return charset;
        }
        Charset forName = Charset.forName("UTF-32LE");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(forName, "forName(...)");
        f2726c = forName;
        return forName;
    }
}
