package m4;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.squareup.picasso.Picasso$LoadedFrom;
import java.io.IOException;

/* renamed from: m4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1323b extends L {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18674a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18675b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public AssetManager f18676c;

    public C1323b(Context context) {
        this.f18674a = context;
    }

    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        Uri uri = i2.f18620a;
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && "android_asset".equals(uri.getPathSegments().get(0));
    }

    @Override // m4.L
    public K load(I i2, int i7) throws IOException {
        if (this.f18676c == null) {
            synchronized (this.f18675b) {
                try {
                    if (this.f18676c == null) {
                        this.f18676c = this.f18674a.getAssets();
                    }
                } finally {
                }
            }
        }
        return new K(e6.w.source(this.f18676c.open(i2.f18620a.toString().substring(22))), Picasso$LoadedFrom.DISK);
    }
}
