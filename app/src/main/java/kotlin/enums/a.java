package kotlin.enums;

import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public abstract class a {
    public static final <E extends Enum<E>> B5.a enumEntries(E[] entries) {
        j.checkNotNullParameter(entries, "entries");
        return new EnumEntriesList(entries);
    }
}
