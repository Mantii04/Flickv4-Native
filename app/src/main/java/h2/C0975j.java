package h2;

import com.android.volley.Header;
import java.io.InputStream;
import java.util.Collections;
import java.util.List;

/* renamed from: h2.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0975j {

    /* renamed from: a, reason: collision with root package name */
    public final int f16508a;

    /* renamed from: b, reason: collision with root package name */
    public final List f16509b;

    /* renamed from: c, reason: collision with root package name */
    public final int f16510c;

    /* renamed from: d, reason: collision with root package name */
    public final InputStream f16511d;

    public C0975j(int i2, List<Header> list) {
        this(i2, list, -1, null);
    }

    public final InputStream getContent() {
        InputStream inputStream = this.f16511d;
        if (inputStream != null) {
            return inputStream;
        }
        return null;
    }

    public final int getContentLength() {
        return this.f16510c;
    }

    public final List<Header> getHeaders() {
        return Collections.unmodifiableList(this.f16509b);
    }

    public final int getStatusCode() {
        return this.f16508a;
    }

    public C0975j(int i2, List<Header> list, int i7, InputStream inputStream) {
        this.f16508a = i2;
        this.f16509b = list;
        this.f16510c = i7;
        this.f16511d = inputStream;
    }
}
