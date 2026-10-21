package F2;

import G2.t;
import android.content.Context;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import l2.m;

/* loaded from: classes.dex */
public final class a implements m {

    /* renamed from: b, reason: collision with root package name */
    public final int f987b;

    /* renamed from: c, reason: collision with root package name */
    public final m f988c;

    public a(int i2, m mVar) {
        this.f987b = i2;
        this.f988c = mVar;
    }

    public static m obtain(Context context) {
        return new a(context.getResources().getConfiguration().uiMode & 48, b.obtain(context));
    }

    @Override // l2.m
    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f987b == aVar.f987b && this.f988c.equals(aVar.f988c)) {
                return true;
            }
        }
        return false;
    }

    @Override // l2.m
    public int hashCode() {
        return t.hashCode(this.f988c, this.f987b);
    }

    @Override // l2.m
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.f988c.updateDiskCacheKey(messageDigest);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.f987b).array());
    }
}
