package r2;

import android.net.Uri;
import android.text.TextUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.MessageDigest;
import java.util.Map;

/* renamed from: r2.I, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1550I implements l2.m {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1551J f19733b;

    /* renamed from: c, reason: collision with root package name */
    public final URL f19734c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19735d;

    /* renamed from: e, reason: collision with root package name */
    public String f19736e;

    /* renamed from: f, reason: collision with root package name */
    public URL f19737f;

    /* renamed from: g, reason: collision with root package name */
    public volatile byte[] f19738g;

    /* renamed from: h, reason: collision with root package name */
    public int f19739h;

    public C1550I(URL url) {
        this(url, InterfaceC1551J.f19740a);
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof C1550I) {
            C1550I c1550i = (C1550I) obj;
            if (getCacheKey().equals(c1550i.getCacheKey()) && this.f19733b.equals(c1550i.f19733b)) {
                return true;
            }
        }
        return false;
    }

    public String getCacheKey() {
        String str = this.f19735d;
        return str != null ? str : ((URL) G2.r.checkNotNull(this.f19734c)).toString();
    }

    public Map<String, String> getHeaders() {
        return this.f19733b.getHeaders();
    }

    @Override // l2.m
    public int hashCode() {
        if (this.f19739h == 0) {
            int hashCode = getCacheKey().hashCode();
            this.f19739h = hashCode;
            this.f19739h = this.f19733b.hashCode() + (hashCode * 31);
        }
        return this.f19739h;
    }

    public String toString() {
        return getCacheKey();
    }

    public URL toURL() throws MalformedURLException {
        if (this.f19737f == null) {
            if (TextUtils.isEmpty(this.f19736e)) {
                String str = this.f19735d;
                if (TextUtils.isEmpty(str)) {
                    str = ((URL) G2.r.checkNotNull(this.f19734c)).toString();
                }
                this.f19736e = Uri.encode(str, "@#&=*+-_.,:!?()/~'%;$");
            }
            this.f19737f = new URL(this.f19736e);
        }
        return this.f19737f;
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        if (this.f19738g == null) {
            this.f19738g = getCacheKey().getBytes(l2.m.f18122a);
        }
        messageDigest.update(this.f19738g);
    }

    public C1550I(String str) {
        this(str, InterfaceC1551J.f19740a);
    }

    public C1550I(URL url, InterfaceC1551J interfaceC1551J) {
        this.f19734c = (URL) G2.r.checkNotNull(url);
        this.f19735d = null;
        this.f19733b = (InterfaceC1551J) G2.r.checkNotNull(interfaceC1551J);
    }

    public C1550I(String str, InterfaceC1551J interfaceC1551J) {
        this.f19734c = null;
        this.f19735d = G2.r.checkNotEmpty(str);
        this.f19733b = (InterfaceC1551J) G2.r.checkNotNull(interfaceC1551J);
    }
}
