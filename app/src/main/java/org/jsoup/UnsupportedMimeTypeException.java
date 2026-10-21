package org.jsoup;

import java.io.IOException;

/* loaded from: classes2.dex */
public class UnsupportedMimeTypeException extends IOException {

    /* renamed from: b, reason: collision with root package name */
    public final String f19181b;

    /* renamed from: e, reason: collision with root package name */
    public final String f19182e;

    public UnsupportedMimeTypeException(String str, String str2, String str3) {
        super(str);
        this.f19181b = str2;
        this.f19182e = str3;
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + ". Mimetype=" + this.f19181b + ", URL=" + this.f19182e;
    }
}
