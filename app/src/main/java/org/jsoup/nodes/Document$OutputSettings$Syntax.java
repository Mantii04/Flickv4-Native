package org.jsoup.nodes;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Document$OutputSettings$Syntax {

    /* renamed from: b, reason: collision with root package name */
    public static final Document$OutputSettings$Syntax f19183b;

    /* renamed from: e, reason: collision with root package name */
    public static final Document$OutputSettings$Syntax f19184e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Document$OutputSettings$Syntax[] f19185f;

    static {
        Document$OutputSettings$Syntax document$OutputSettings$Syntax = new Document$OutputSettings$Syntax("html", 0);
        f19183b = document$OutputSettings$Syntax;
        Document$OutputSettings$Syntax document$OutputSettings$Syntax2 = new Document$OutputSettings$Syntax("xml", 1);
        f19184e = document$OutputSettings$Syntax2;
        f19185f = new Document$OutputSettings$Syntax[]{document$OutputSettings$Syntax, document$OutputSettings$Syntax2};
    }

    public static Document$OutputSettings$Syntax valueOf(String str) {
        return (Document$OutputSettings$Syntax) Enum.valueOf(Document$OutputSettings$Syntax.class, str);
    }

    public static Document$OutputSettings$Syntax[] values() {
        return (Document$OutputSettings$Syntax[]) f19185f.clone();
    }
}
