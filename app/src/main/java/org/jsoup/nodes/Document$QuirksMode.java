package org.jsoup.nodes;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Document$QuirksMode {

    /* renamed from: b, reason: collision with root package name */
    public static final Document$QuirksMode f19186b;

    /* renamed from: e, reason: collision with root package name */
    public static final Document$QuirksMode f19187e;

    /* renamed from: f, reason: collision with root package name */
    public static final /* synthetic */ Document$QuirksMode[] f19188f;

    static {
        Document$QuirksMode document$QuirksMode = new Document$QuirksMode("noQuirks", 0);
        f19186b = document$QuirksMode;
        Document$QuirksMode document$QuirksMode2 = new Document$QuirksMode("quirks", 1);
        f19187e = document$QuirksMode2;
        f19188f = new Document$QuirksMode[]{document$QuirksMode, document$QuirksMode2, new Document$QuirksMode("limitedQuirks", 2)};
    }

    public static Document$QuirksMode valueOf(String str) {
        return (Document$QuirksMode) Enum.valueOf(Document$QuirksMode.class, str);
    }

    public static Document$QuirksMode[] values() {
        return (Document$QuirksMode[]) f19188f.clone();
    }
}
