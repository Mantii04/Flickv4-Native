package p2;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public final class r implements H2.d {
    @Override // H2.d
    public s create() {
        try {
            return new s(MessageDigest.getInstance("SHA-256"));
        } catch (NoSuchAlgorithmException e3) {
            throw new RuntimeException(e3);
        }
    }
}
