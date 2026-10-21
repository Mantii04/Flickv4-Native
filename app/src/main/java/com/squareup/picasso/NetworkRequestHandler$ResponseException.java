package com.squareup.picasso;

import A.i;
import java.io.IOException;

/* loaded from: classes2.dex */
final class NetworkRequestHandler$ResponseException extends IOException {

    /* renamed from: b, reason: collision with root package name */
    public final int f13406b;

    public NetworkRequestHandler$ResponseException(int i2) {
        super(i.f(i2, "HTTP "));
        this.f13406b = i2;
    }
}
