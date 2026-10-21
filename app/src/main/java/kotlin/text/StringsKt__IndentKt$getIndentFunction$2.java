package kotlin.text;

import A.i;
import H5.l;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
final class StringsKt__IndentKt$getIndentFunction$2 extends Lambda implements l {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ String f17463b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StringsKt__IndentKt$getIndentFunction$2(String str) {
        super(1);
        this.f17463b = str;
    }

    @Override // H5.l
    public final String invoke(String line) {
        j.checkNotNullParameter(line, "line");
        return i.o(new StringBuilder(), this.f17463b, line);
    }
}
