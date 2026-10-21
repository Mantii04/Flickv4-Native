package org.jsoup.parser;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class Token$TokenType {

    /* renamed from: b, reason: collision with root package name */
    public static final Token$TokenType f19240b;

    /* renamed from: e, reason: collision with root package name */
    public static final Token$TokenType f19241e;

    /* renamed from: f, reason: collision with root package name */
    public static final Token$TokenType f19242f;

    /* renamed from: j, reason: collision with root package name */
    public static final Token$TokenType f19243j;

    /* renamed from: m, reason: collision with root package name */
    public static final Token$TokenType f19244m;

    /* renamed from: n, reason: collision with root package name */
    public static final Token$TokenType f19245n;

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ Token$TokenType[] f19246p;

    static {
        Token$TokenType token$TokenType = new Token$TokenType("Doctype", 0);
        f19240b = token$TokenType;
        Token$TokenType token$TokenType2 = new Token$TokenType("StartTag", 1);
        f19241e = token$TokenType2;
        Token$TokenType token$TokenType3 = new Token$TokenType("EndTag", 2);
        f19242f = token$TokenType3;
        Token$TokenType token$TokenType4 = new Token$TokenType("Comment", 3);
        f19243j = token$TokenType4;
        Token$TokenType token$TokenType5 = new Token$TokenType("Character", 4);
        f19244m = token$TokenType5;
        Token$TokenType token$TokenType6 = new Token$TokenType("EOF", 5);
        f19245n = token$TokenType6;
        f19246p = new Token$TokenType[]{token$TokenType, token$TokenType2, token$TokenType3, token$TokenType4, token$TokenType5, token$TokenType6};
    }

    public static Token$TokenType valueOf(String str) {
        return (Token$TokenType) Enum.valueOf(Token$TokenType.class, str);
    }

    public static Token$TokenType[] values() {
        return (Token$TokenType[]) f19246p.clone();
    }
}
