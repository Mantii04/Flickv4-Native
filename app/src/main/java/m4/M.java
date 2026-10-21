package m4;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.squareup.picasso.Picasso$LoadedFrom;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

/* loaded from: classes2.dex */
public final class M extends L {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18640a;

    public M(Context context) {
        this.f18640a = context;
    }

    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        if (i2.f18621b != 0) {
            return true;
        }
        return "android.resource".equals(i2.f18620a.getScheme());
    }

    @Override // m4.L
    public K load(I i2, int i7) throws IOException {
        Resources resources;
        StringBuilder sb = W.f18670a;
        int i8 = i2.f18621b;
        Context context = this.f18640a;
        Uri uri = i2.f18620a;
        if (i8 != 0 || uri == null) {
            resources = context.getResources();
        } else {
            String authority = uri.getAuthority();
            if (authority == null) {
                throw new FileNotFoundException(b.c.k("No package provided: ", uri));
            }
            try {
                resources = context.getPackageManager().getResourcesForApplication(authority);
            } catch (PackageManager.NameNotFoundException unused) {
                throw new FileNotFoundException(b.c.k("Unable to obtain resources for package: ", uri));
            }
        }
        int i9 = i2.f18621b;
        if (i9 == 0 && uri != null) {
            String authority2 = uri.getAuthority();
            if (authority2 == null) {
                throw new FileNotFoundException(b.c.k("No package provided: ", uri));
            }
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null || pathSegments.isEmpty()) {
                throw new FileNotFoundException(b.c.k("No path segments: ", uri));
            }
            if (pathSegments.size() == 1) {
                try {
                    i9 = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused2) {
                    throw new FileNotFoundException(b.c.k("Last path segment is not a resource ID: ", uri));
                }
            } else {
                if (pathSegments.size() != 2) {
                    throw new FileNotFoundException(b.c.k("More than two path segments: ", uri));
                }
                i9 = resources.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority2);
            }
        }
        BitmapFactory.Options b7 = L.b(i2);
        if (b7 != null && b7.inJustDecodeBounds) {
            BitmapFactory.decodeResource(resources, i9, b7);
            L.a(i2.f18623d, i2.f18624e, b7.outWidth, b7.outHeight, b7, i2);
        }
        return new K(BitmapFactory.decodeResource(resources, i9, b7), Picasso$LoadedFrom.DISK);
    }
}
