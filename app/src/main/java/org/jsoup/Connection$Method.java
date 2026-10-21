package org.jsoup;

/* loaded from: classes2.dex */
public enum Connection$Method {
    GET(false),
    /* JADX INFO: Fake field, exist only in values array */
    POST(true),
    /* JADX INFO: Fake field, exist only in values array */
    PUT(true),
    /* JADX INFO: Fake field, exist only in values array */
    DELETE(false),
    /* JADX INFO: Fake field, exist only in values array */
    PATCH(true),
    HEAD(false),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONS(false),
    /* JADX INFO: Fake field, exist only in values array */
    TRACE(false);


    /* renamed from: b, reason: collision with root package name */
    public final boolean f19178b;

    Connection$Method(boolean z6) {
        this.f19178b = z6;
    }

    public final boolean hasBody() {
        return this.f19178b;
    }
}
