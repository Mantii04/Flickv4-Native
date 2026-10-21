package com.airbnb.lottie.parser.moshi;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class JsonReader$Token {

    /* renamed from: b, reason: collision with root package name */
    public static final JsonReader$Token f9062b;

    /* renamed from: e, reason: collision with root package name */
    public static final JsonReader$Token f9063e;

    /* renamed from: f, reason: collision with root package name */
    public static final JsonReader$Token f9064f;

    /* renamed from: j, reason: collision with root package name */
    public static final JsonReader$Token f9065j;

    /* renamed from: m, reason: collision with root package name */
    public static final JsonReader$Token f9066m;

    /* renamed from: n, reason: collision with root package name */
    public static final JsonReader$Token f9067n;

    /* renamed from: p, reason: collision with root package name */
    public static final JsonReader$Token f9068p;

    /* renamed from: q, reason: collision with root package name */
    public static final JsonReader$Token f9069q;

    /* renamed from: r, reason: collision with root package name */
    public static final JsonReader$Token f9070r;

    /* renamed from: s, reason: collision with root package name */
    public static final JsonReader$Token f9071s;

    /* renamed from: t, reason: collision with root package name */
    public static final /* synthetic */ JsonReader$Token[] f9072t;

    static {
        JsonReader$Token jsonReader$Token = new JsonReader$Token("BEGIN_ARRAY", 0);
        f9062b = jsonReader$Token;
        JsonReader$Token jsonReader$Token2 = new JsonReader$Token("END_ARRAY", 1);
        f9063e = jsonReader$Token2;
        JsonReader$Token jsonReader$Token3 = new JsonReader$Token("BEGIN_OBJECT", 2);
        f9064f = jsonReader$Token3;
        JsonReader$Token jsonReader$Token4 = new JsonReader$Token("END_OBJECT", 3);
        f9065j = jsonReader$Token4;
        JsonReader$Token jsonReader$Token5 = new JsonReader$Token("NAME", 4);
        f9066m = jsonReader$Token5;
        JsonReader$Token jsonReader$Token6 = new JsonReader$Token("STRING", 5);
        f9067n = jsonReader$Token6;
        JsonReader$Token jsonReader$Token7 = new JsonReader$Token("NUMBER", 6);
        f9068p = jsonReader$Token7;
        JsonReader$Token jsonReader$Token8 = new JsonReader$Token("BOOLEAN", 7);
        f9069q = jsonReader$Token8;
        JsonReader$Token jsonReader$Token9 = new JsonReader$Token("NULL", 8);
        f9070r = jsonReader$Token9;
        JsonReader$Token jsonReader$Token10 = new JsonReader$Token("END_DOCUMENT", 9);
        f9071s = jsonReader$Token10;
        f9072t = new JsonReader$Token[]{jsonReader$Token, jsonReader$Token2, jsonReader$Token3, jsonReader$Token4, jsonReader$Token5, jsonReader$Token6, jsonReader$Token7, jsonReader$Token8, jsonReader$Token9, jsonReader$Token10};
    }

    public static JsonReader$Token valueOf(String str) {
        return (JsonReader$Token) Enum.valueOf(JsonReader$Token.class, str);
    }

    public static JsonReader$Token[] values() {
        return (JsonReader$Token[]) f9072t.clone();
    }
}
