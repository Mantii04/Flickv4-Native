package p2;

import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class s implements H2.f {

    /* renamed from: b, reason: collision with root package name */
    public final MessageDigest f19472b;

    /* renamed from: e, reason: collision with root package name */
    public final H2.k f19473e = H2.k.newInstance();

    public s(MessageDigest messageDigest) {
        this.f19472b = messageDigest;
    }

    @Override // H2.f
    public H2.k getVerifier() {
        return this.f19473e;
    }
}
