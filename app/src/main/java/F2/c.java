package F2;

import java.security.MessageDigest;
import l2.m;

/* loaded from: classes.dex */
public final class c implements m {

    /* renamed from: b, reason: collision with root package name */
    public static final c f990b = new c();

    public static c obtain() {
        return f990b;
    }

    public String toString() {
        return "EmptySignature";
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
    }
}
