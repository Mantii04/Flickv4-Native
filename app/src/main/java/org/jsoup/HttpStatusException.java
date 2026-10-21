package org.jsoup;

import java.io.IOException;

/* loaded from: classes2.dex */
public class HttpStatusException extends IOException {

    /* renamed from: b, reason: collision with root package name */
    public final int f19179b;

    /* renamed from: e, reason: collision with root package name */
    public final String f19180e;

    public HttpStatusException(String str, int i2, String str2) {
        super(str);
        this.f19179b = i2;
        this.f19180e = str2;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Status=" + this.f19179b + ", URL=" + this.f19180e;
    }
}
