package P5;

/* loaded from: classes2.dex */
public abstract class l {
    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void appendElement(Appendable appendable, T t6, H5.l lVar) {
        kotlin.jvm.internal.j.checkNotNullParameter(appendable, "<this>");
        if (lVar != null) {
            appendable.append((CharSequence) lVar.invoke(t6));
            return;
        }
        if (t6 == 0 ? true : t6 instanceof CharSequence) {
            appendable.append((CharSequence) t6);
        } else if (t6 instanceof Character) {
            appendable.append(((Character) t6).charValue());
        } else {
            appendable.append(String.valueOf(t6));
        }
    }
}
