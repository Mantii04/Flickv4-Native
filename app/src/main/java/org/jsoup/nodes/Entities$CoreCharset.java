package org.jsoup.nodes;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Entities$CoreCharset {

    /* renamed from: b, reason: collision with root package name */
    public static final Entities$CoreCharset f19190b;

    /* renamed from: e, reason: collision with root package name */
    public static final Entities$CoreCharset f19191e;

    /* renamed from: f, reason: collision with root package name */
    public static final Entities$CoreCharset f19192f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ Entities$CoreCharset[] f19193j;

    static {
        Entities$CoreCharset entities$CoreCharset = new Entities$CoreCharset("ascii", 0);
        f19190b = entities$CoreCharset;
        Entities$CoreCharset entities$CoreCharset2 = new Entities$CoreCharset("utf", 1);
        f19191e = entities$CoreCharset2;
        Entities$CoreCharset entities$CoreCharset3 = new Entities$CoreCharset("fallback", 2);
        f19192f = entities$CoreCharset3;
        f19193j = new Entities$CoreCharset[]{entities$CoreCharset, entities$CoreCharset2, entities$CoreCharset3};
    }

    public static Entities$CoreCharset valueOf(String str) {
        return (Entities$CoreCharset) Enum.valueOf(Entities$CoreCharset.class, str);
    }

    public static Entities$CoreCharset[] values() {
        return (Entities$CoreCharset[]) f19193j.clone();
    }
}
