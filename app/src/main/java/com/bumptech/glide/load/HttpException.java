package com.bumptech.glide.load;

import java.io.IOException;

/* loaded from: classes.dex */
public final class HttpException extends IOException {
    private static final long serialVersionUID = 1;

    public HttpException(int i2) {
        this("Http request failed", i2);
    }

    public HttpException(String str, int i2) {
        this(str, i2, null);
    }

    public HttpException(String str, int i2, Throwable th) {
        super(str + ", status code: " + i2, th);
    }
}
